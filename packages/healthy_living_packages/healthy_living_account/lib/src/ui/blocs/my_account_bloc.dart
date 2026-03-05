import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:storage/storage.dart';

@Injectable()
class MyAccountBloc extends Bloc<MyAccountEvent, MyAccountState> {
  final UserDataRepository _userDataRepository;
  final SessionRepository _sessionRepository;
  UserDataModel? _userDataModel;
  final KeyValueStorage _keyValueStorage;

  UserDataModel? get userDataModel => _userDataModel;
  AuthProvider? _authProvider;
  bool? _isPremiumFtUxViewed;

  bool? get isPremiumFtUxViewed => _isPremiumFtUxViewed;

  AuthProvider? get authProvider => _authProvider;

  MyAccountBloc({
    required SessionRepository sessionRepository,
    required UserDataRepository userDataRepository,
    required KeyValueStorage keyValueStorage,
  }) : _sessionRepository = sessionRepository,
       _userDataRepository = userDataRepository,
       _keyValueStorage = keyValueStorage,
       super(const MyAccountState.initial()) {
    on<AccountInitialized>(_onInitialized);
    on<SignOut>(_onSignOut);
    on<AccountDeleteUser>(_onAccountDeleteUser);
    on<AccountCopyRevenueCatId>(_onAccountCopyRevenueCatId);
    on<IngredientPreferenceTapped>(_onPressIngredientPreference);
  }

  Future<void> _onPressIngredientPreference(
    IngredientPreferenceTapped event,
    Emitter<MyAccountState> emit,
  ) async {
    emit(MyAccountState.onTapIngredientPreference());
    _isPremiumFtUxViewed = await _keyValueStorage.getBool(
      HealthyLivingSharedKeyValueConstant.isPremiumFtUxViewed,
    );
    if (_isPremiumFtUxViewed ?? false) {
      emit(MyAccountState.manageIngredientPreference());
    } else {
      emit(MyAccountState.startedIngredientPreference());
    }
  }

  Future<void> _onSignOut(SignOut event, Emitter<MyAccountState> emit) async {
    final isAuthenticated =
        await _sessionRepository.getIsAuthenticated() ?? false;
    emit(const MyAccountState.loading());
    try {
      await _sessionRepository.saveLogs(message: "logoutUser call");
      if (isAuthenticated) {
        final response = await _userDataRepository.logoutUser();
        if (response.isSuccess) {
          await _sessionRepository.saveLogs(message: "");

          await UserSessionManager.instance.fireAndWait(
            UserSessionEventType.logout,
          );
          emit(MyAccountSignOutSuccess());
        }
      } else {
        await _sessionRepository.saveLogs(
          message: "try to call logoutUser without Authenticated",
          saveToFile: true,
        );
      }
    } on Exception catch (e) {
      if (e is NetworkException) {
        await _sessionRepository.saveLogs(
          message:
              "logoutUser exception : ${e.errorMessage},  ${e.statusCode}}",
          saveToFile: true,
        );
        emit(MyAccountState.error(exception: e));
      }
    }
  }

  Future<void> _onInitialized(
    AccountInitialized event,
    Emitter<MyAccountState> emit,
  ) async {
    final authProviderString = await _keyValueStorage.getString(
      HealthyLivingSharedKeyValueConstant.authProvider,
    );
    _isPremiumFtUxViewed = await _keyValueStorage.getBool(
      HealthyLivingSharedKeyValueConstant.isPremiumFtUxViewed,
    );
    _authProvider = AuthProvider.fromName(authProviderString);
    try {
      final userDataString = await _userDataRepository.getUserData();
      if (userDataString != null) {
        final userDataJson = jsonDecode(userDataString);
        _userDataModel = UserDataModel.fromJson(userDataJson);
      }
      emit(MyAccountInitial());
    } on Exception catch (e) {
      emit(MyAccountFailure(exception: e));
    }
  }

  Future<void> _onAccountDeleteUser(
    AccountDeleteUser event,
    Emitter<MyAccountState> emit,
  ) async {
    try {
      emit(const MyAccountState.loading());
      await _sessionRepository.saveLogs(message: "deleteUser call");
      final response = await _userDataRepository.deleteUser();
      if (response.isSuccess) {
        await _sessionRepository.saveLogs(message: "");
        await UserSessionManager.instance.fireAndWait(
          UserSessionEventType.accountDeleted,
        );
        emit(MyAccountDeleteUserSuccess());
      }
    } on Exception catch (e) {
      if (e is NetworkException) {
        await _sessionRepository.saveLogs(
          message:
          "deleteUser exception : ${e.errorMessage},  ${e.statusCode}}",
          saveToFile: true,
        );
        emit(MyAccountState.error(exception: e));
      }
    }
  }

  Future<void> _onAccountCopyRevenueCatId(
      AccountCopyRevenueCatId event,
      Emitter<MyAccountState> emit,
      ) async {
    try {
      emit(const MyAccountState.loading());
      final appUserId = userDataModel?.revenueCat?.appUserId;

      if (appUserId.isValidValue) {
        await Clipboard.setData(ClipboardData(text: appUserId!));
        emit(MyAccountCopyRevenueCatIdSuccess());
      } else {
        emit(MyAccountCopyRevenueCatIdFailure());
      }
    } catch (e) {
      emit(MyAccountCopyRevenueCatIdFailure());
    }
  }
}
