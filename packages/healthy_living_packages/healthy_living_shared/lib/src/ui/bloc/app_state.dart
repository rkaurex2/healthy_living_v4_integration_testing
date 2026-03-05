import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'app_state.freezed.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState.splashInitial() = AppInitial;

  const factory AppState.authenticationStatus({
    required bool isAuthenticated,
    required bool isFtUxCompletedStatus,
  }) = AppAuthenticationStatus;

  const factory AppState.refreshUserLoginState({required DateTime timestamp}) =
      RefreshUserLoginState;

  const factory AppState.appUnauthenticatedState({
    required DateTime timestamp,
  }) = AppUnauthenticatedState;

  const factory AppState.refreshBottomTabs({
    required bool isRefresh,
    required BottomBarRefreshPage bottomBarRefreshPage,
  }) = RefreshBottomTabs;

  const factory AppState.subscribeToPremiumSuccess() =
      SubscribeToPremiumSuccess;

  const factory AppState.exitFromSubmitProductFlow(String timestamp) =
      ExitFromSubmitProductFlow;

  const factory AppState.moveToPaywall(String timestamp) = MoveToPaywall;

  const factory AppState.moveToHistory(String timestamp) = MoveToHistory;


}
