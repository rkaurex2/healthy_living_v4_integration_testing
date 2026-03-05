import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'app_event.freezed.dart';

@freezed
sealed class AppEvent with _$AppEvent {
  const factory AppEvent.checkAuthenticationStatus() =
      CheckAuthenticationStatus;

  const factory AppEvent.refreshUserLogin() = RefreshUserLogin;

  const factory AppEvent.userSessionExpired() = UserSessionExpired;

  const factory AppEvent.currentBottomBarIndex({
    required bool isRefresh,
    required BottomBarRefreshPage bottomBarRefreshPage,
  }) = CurrentBottomBarIndex;

  const factory AppEvent.subscribedToPremium() = SubscribedToPremium;

  const factory AppEvent.productDetailsSaved({
    required int? productId,
    required ProductCategory? productCategory,
    @Default(false) bool openPaywallAfterAuth,
  }) = ProductDetailsSaved;

  const factory AppEvent.navigationDataAfterAuthenticationSaved({
    required NavigationDataAfterAuthentication
    navigationDataAfterAuthentication,
    @Default(false) bool triggerPaywall,
  }) = NavigationDataAfterAuthenticationSaved;

  const factory AppEvent.navigationToScanAfterSubmitProductFlowExit() =
      NavigationToScanAfterSubmitProductFlowExit;

  const factory AppEvent.navigationToPaywall() = NavigationToPaywall;

  const factory AppEvent.navigationToHistory() = NavigationToHistory;
}
