import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/home_event.dart';
import 'package:healthy_living_home/src/ui/bloc/home_state.dart';
import 'package:injectable/injectable.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart' show KeyValueStorage;

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required SessionRepository sessionRepository,
    required HomeRepository homeRepository,
    required KeyValueStorage keyValueStorage,
    required UserDataRepository userDataRepository,
    required CreateListAnalytics createListAnalytics,
  }) : _sessionRepository = sessionRepository,
       _homeRepository = homeRepository,
       _keyValueStorage = keyValueStorage,
       _userDataRepository = userDataRepository,
       _createListAnalytics = createListAnalytics,
       super(
         const HomeState.homeStarted(
           shouldRefreshPremiumFlag: false,
           isSubscriptionExpired: false,
         ),
       ) {
    on<OnNameListTextChanged>(_onNameListTextChanged);
    on<HomeInitialized>(_onHomeInitialized);
    on<CreateYourList>(_onCreateYourList);
  }

  final SessionRepository _sessionRepository;
  final HomeRepository _homeRepository;
  final CreateListAnalytics _createListAnalytics;
  bool _isAuthenticated = false;
  final KeyValueStorage _keyValueStorage;
  final UserDataRepository _userDataRepository;

  bool get isAuthenticated => _isAuthenticated;
  UserDataModel? _userDataModel;

  UserDataModel? get userDataModel => _userDataModel;

  Future<void> _onHomeInitialized(
    HomeInitialized event,
    Emitter<HomeState> emit,
  ) async {
    _isAuthenticated = await _sessionRepository.getIsAuthenticated() == true;
    final isPremiumUser = await _sessionRepository.getIsPremiumUser() == true;

    final encodedUserDataJson = await _keyValueStorage.getString(
      HealthyLivingSharedKeyValueConstant.user,
    );
    if (encodedUserDataJson.isValidValue) {
      _userDataModel = UserDataModel.fromJson(jsonDecode(encodedUserDataJson!));
    }

    bool isPremiumUserUpdated = isPremiumUser;
    if (_isAuthenticated) {
      try {
        final entitlementsVerifyResponse =
            await _userDataRepository.verifyEntitlements();
        isPremiumUserUpdated = HealthyLivingSharedUtils.checkForPremiumUser(
          revenueCatData: entitlementsVerifyResponse.data?.userData?.revenueCat,
          entitlements: entitlementsVerifyResponse.data?.userData?.entitlements,
        );

        if (isPremiumUser != isPremiumUserUpdated) {
          await _sessionRepository.saveIsPremiumUser(isPremiumUserUpdated);
        }
      } on Exception catch (exception) {
        debugPrint("Entitlement Verify Api Exception: $exception");
      }
    }

    emit(
      HomeState.homeStarted(
        shouldRefreshPremiumFlag: isPremiumUser != isPremiumUserUpdated,
        isSubscriptionExpired:
            (isPremiumUserUpdated == false && isPremiumUser == true),
      ),
    );
  }

  Future<void> _onCreateYourList(
    CreateYourList event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(HomeState.createListInProgress());
      final response = await _homeRepository.createYourList(
        request: CreateListRequestModel(name: event.name.trim()),
      );
      if (response.isSuccess && response.data != null) {
        emit(
          HomeState.createListSuccess(
            listId: (response.data?.id ?? 0).toString(),
          ),
        );

        /// GA4 event (Create List)
        await _createListAnalytics.logListCreated(
          listId: response.data!.id.toString(),
          listName: response.data!.name,
          itemCount: response.data!.items.length,
        );
      } else {
        emit(
          HomeState.createListInFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (e) {
      emit(HomeState.createListInFailure(exception: e));
    }
  }

  Future<void> _onNameListTextChanged(
    OnNameListTextChanged event,
    Emitter<HomeState> emit,
  ) async {
    if (event.listName.trim().isValidValue) {
      emit(HomeState.validateCreateButton(isCreateButtonEnable: true));
    } else {
      emit(HomeState.validateCreateButton(isCreateButtonEnable: false));
    }
  }
}
