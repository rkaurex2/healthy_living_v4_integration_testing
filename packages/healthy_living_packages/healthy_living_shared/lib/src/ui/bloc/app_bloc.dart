import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart' hide ProductCategory;
import 'package:storage/storage.dart';

@Injectable()
class AppBloc extends Bloc<AppEvent, AppState> {
  final SessionRepository _sessionRepository;
  final KeyValueStorage _keyValueStorage;
  final UserDataRepository _userDataRepository;
  final AnalyticsService _analytics;
  bool _isAuthenticated = false;
  bool _isPremiumUser = false;
  UserDataModel? _userDataModel;
  int? _productId;
  ProductCategory? _productCategory;
  NavigationDataAfterAuthentication? _navigationDataAfterAuthentication;

  bool get isAuthenticated => _isAuthenticated;

  bool get isPremiumUser => _isPremiumUser;

  UserDataModel? get userDataModel => _userDataModel;

  int? get productId => _productId;

  ProductCategory? get productCategory => _productCategory;

  bool _openPaywallAfterAuthFromProductDetail = false;

  bool get openPaywallAfterAuthFromProductDetail =>
      _openPaywallAfterAuthFromProductDetail;

  NavigationDataAfterAuthentication? get navigationDataAfterAuthentication =>
      _navigationDataAfterAuthentication;

  AppBloc({
    required SessionRepository sessionRepository,
    required KeyValueStorage keyValueStorage,
    required UserDataRepository userDataRepository,
    required AnalyticsService analytics,
  }) : _sessionRepository = sessionRepository,
       _keyValueStorage = keyValueStorage,
       _userDataRepository = userDataRepository,
       _analytics = analytics,
       super(AppState.splashInitial()) {
    on<UserSessionExpired>(_onUserSessionExpired);
    on<CheckAuthenticationStatus>(_onCheckAuthenticationStatus);
    on<RefreshUserLogin>(_refreshLogin);
    on<CurrentBottomBarIndex>(_currentBottomBarIndex);
    on<SubscribedToPremium>(_onSubscribedToPremium);
    on<ProductDetailsSaved>(_onProductDetailsSaved);
    on<NavigationDataAfterAuthenticationSaved>(
      _onNavigationDataAfterAuthenticationSaved,
    );
    on<NavigationToScanAfterSubmitProductFlowExit>(
      _navigationToScanAfterSubmitProductFlowExit,
    );
    on<NavigationToPaywall>(_navigationToPaywall);
    on<NavigationToHistory>(_navigationToHistory);

    UserSessionManager.instance.stream.listen((event) async {
      await _clearLocalData();

      switch (event) {
        case UserSessionEventType.sessionExpired:
          await _sessionRepository.saveLogs(
            message: "session expired get 401 from api",
            saveToFile: true,
          );
          add(UserSessionExpired());
          break;
        default:
          break;
      }

      /// IMPORTANT — signal that work is done
      UserSessionManager.instance.completeEvent();
    });
  }

  Future<void> _onUserSessionExpired(
    UserSessionExpired event,
    Emitter<AppState> emit,
  ) async {
    emit(AppState.appUnauthenticatedState(timestamp: DateTime.now()));
  }

  Future<void> _currentBottomBarIndex(
    CurrentBottomBarIndex event,
    Emitter<AppState> emit,
  ) async {
    emit(
      AppState.refreshBottomTabs(
        isRefresh: event.isRefresh,
        bottomBarRefreshPage: event.bottomBarRefreshPage,
      ),
    );
  }

  Future<void> _onCheckAuthenticationStatus(
    CheckAuthenticationStatus event,
    Emitter<AppState> emit,
  ) async {
    final isAuthenticated = await _sessionRepository.getIsAuthenticated();
    if (isAuthenticated == null || isAuthenticated == false) {
      await _sessionRepository.removeUserTokens();
    }
    _isAuthenticated = isAuthenticated ?? false;

    String auth = _isAuthenticated ? "Authenticated" : "Not Authenticated";
    await _sessionRepository.saveLogs(message: "user  :  $auth");

    _isPremiumUser = await _sessionRepository.getIsPremiumUser() ?? false;
    final userDataString = await _userDataRepository.getUserData();
    if (userDataString.isValidValue) {
      _userDataModel = UserDataModel.fromJson(jsonDecode(userDataString!));
    }

    final isFtUxCompletedStatus = await _keyValueStorage.getBool(
      HealthyLivingSharedKeyValueConstant.isFtUxViewed,
    );

    emit(
      AppState.authenticationStatus(
        isAuthenticated: _isAuthenticated,
        isFtUxCompletedStatus: isFtUxCompletedStatus ?? false,
      ),
    );
  }

  Future<void> _refreshLogin(
    RefreshUserLogin event,
    Emitter<AppState> emit,
  ) async {
    await _resetAppData();
    emit(AppState.refreshUserLoginState(timestamp: DateTime.now()));
  }

  Future<void> _onSubscribedToPremium(
    SubscribedToPremium event,
    Emitter<AppState> emit,
  ) async {
    _isPremiumUser = await _sessionRepository.getIsPremiumUser() ?? false;

    emit(AppState.subscribeToPremiumSuccess());
  }

  void _onProductDetailsSaved(
    ProductDetailsSaved event,
    Emitter<AppState> emit,
  ) {
    _productId = event.productId;
    _productCategory = event.productCategory;
  }

  void _onNavigationDataAfterAuthenticationSaved(
    NavigationDataAfterAuthenticationSaved event,
    Emitter<AppState> emit,
  ) {
    _navigationDataAfterAuthentication =
        event.navigationDataAfterAuthentication;

    if (event.triggerPaywall) {
      emit(AppState.moveToPaywall(DateTime.now().toString()));
      _openPaywallAfterAuthFromProductDetail = false;
    }
  }

  Future<bool> getIsFtUxCompletedStatus() async {
    final isFtUxCompletedStatus = await _keyValueStorage.getBool(
      HealthyLivingSharedKeyValueConstant.isFtUxViewed,
    );
    return isFtUxCompletedStatus ?? false;
  }

  Future<void> _clearLocalData() async {
    // logout from revenue cat
    if (isAuthenticated && isPremiumUser) {
      await Purchases.logOut();
    }

    // logout from google
    final authProviderString = await _keyValueStorage.getString(
      HealthyLivingSharedKeyValueConstant.authProvider,
    );
    final authProvider = AuthProvider.fromName(authProviderString);

    if (authProvider != null) {
      if (authProvider == AuthProvider.googleAndroid ||
          authProvider == AuthProvider.google) {
        await injector.get<GoogleSignIn>().signOut();
      }
    }

    // clear user from google analytics
    await _analytics.clearUser();

    // clear key store data
    await _keyValueStorage.remove(
      HealthyLivingSharedKeyValueConstant.authProvider,
    );
    await _keyValueStorage.remove(
      HealthyLivingSharedKeyValueConstant.isPremiumFtUxViewed,
    );
    await _sessionRepository.removeAccessToken();
    await _sessionRepository.removeRefreshToken();
    await _userDataRepository.remove(HealthyLivingSharedKeyValueConstant.user);
    await _sessionRepository.removeIsAuthenticated();
    await _sessionRepository.removeIsPremiumUser();
    await _resetAppData();
  }

  Future<void> _resetAppData() async {
    _isAuthenticated = await _sessionRepository.getIsAuthenticated() ?? false;
    _isPremiumUser = await _sessionRepository.getIsPremiumUser() ?? false;
    final userDataString = await _userDataRepository.getUserData();
    if (userDataString.isValidValue) {
      _userDataModel = UserDataModel.fromJson(jsonDecode(userDataString!));
    }
  }

  FutureOr<void> _navigationToScanAfterSubmitProductFlowExit(
    NavigationToScanAfterSubmitProductFlowExit event,
    Emitter<AppState> emit,
  ) {
    emit(AppState.exitFromSubmitProductFlow(DateTime.now().toString()));
  }

  FutureOr<void> _navigationToPaywall(
    NavigationToPaywall event,
    Emitter<AppState> emit,
  ) {
    emit(AppState.moveToPaywall(DateTime.now().toString()));
    _openPaywallAfterAuthFromProductDetail = false;
  }

  FutureOr<void> _navigationToHistory(
    NavigationToHistory event,
    Emitter<AppState> emit,
  ) {
    emit(AppState.moveToHistory(DateTime.now().toString()));
  }
}
