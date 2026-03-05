import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';

@Injectable()
class PremiumPurchasesBloc
    extends Bloc<PremiumPurchasesEvent, PremiumPurchasesState> {
  final UserDataRepository _userDataRepository;
  final SessionRepository _sessionRepository;
  final PaywallAnalytics _paywallAnalytics;

  PremiumPurchasesBloc({
    required UserDataRepository userDataRepository,
    required SessionRepository sessionRepository,
    required PaywallAnalytics paywallAnalytics,
  }) : _userDataRepository = userDataRepository,
       _sessionRepository = sessionRepository,
       _paywallAnalytics = paywallAnalytics,
       super(const PremiumPurchasesState.initial()) {
    on<PaywallPresented>(_onPaywallPresented);
    on<EntitlementsVerified>(_onEntitlementsVerified);
  }

  Future<void> _onPaywallPresented(
    PaywallPresented event,
    Emitter<PremiumPurchasesState> emit,
  ) async {
    emit(const PremiumPurchasesState.paywallLoadInProgress());
    try {
      /// GA4 event (Paywall View)
      await _paywallAnalytics.logPaywallView(
        source: event.paywallSource.analyticsValue,
      );

      final paywallResult = await RevenueCatUI.presentPaywallIfNeeded(
        StringConstants.premiumEntitlementId,
      );

      /// GA4 event (Paywall Closed)
      await _paywallAnalytics.logPaywallClose(source: paywallResult.name);

      emit(
        PremiumPurchasesState.paywallLoadSuccess(
          paywallResult: HealthyLivingSharedUtils.getAppPaywallResult(
            paywallResult,
          ),
          paywallSource: event.paywallSource,
        ),
      );
    } on Exception catch (exception) {
      emit(PremiumPurchasesState.paywallLoadFailure(exception: exception));
    }
  }

  Future<void> _onEntitlementsVerified(
    EntitlementsVerified event,
    Emitter<PremiumPurchasesState> emit,
  ) async {
    try {
      emit(PremiumPurchasesState.entitlementsVerificationInProgress());
      final entitlementsVerifyResponse =
          await _userDataRepository.verifyEntitlements();
      if (HealthyLivingSharedUtils.checkForPremiumUser(
        revenueCatData: entitlementsVerifyResponse.data?.userData?.revenueCat,
        entitlements: entitlementsVerifyResponse.data?.userData?.entitlements,
      )) {
        final userData = entitlementsVerifyResponse.data!.userData;
        if (userData != null) {
          if (HealthyLivingSharedUtils.checkForPremiumUser(
            revenueCatData: userData.revenueCat,
            entitlements: userData.entitlements,
          )) {
            await _sessionRepository.saveIsPremiumUser(true);
          }

          /// GA4 event (Paywall Submit)
          final entitlements = userData.entitlements;

          if (entitlements != null && entitlements.isNotEmpty) {
            final entitlement = entitlements.first;

            await _paywallAnalytics.logPaywallSubmit(
              subscriptionId: entitlement.productId,
              entitlementId: entitlement.entitlementId,
              active: entitlement.active,
              environment: entitlement.environment,
            );
          }
        }
        emit(PremiumPurchasesState.entitlementsVerificationSuccess());
      } else {
        emit(
          PremiumPurchasesState.entitlementsVerificationFailure(
            exception: UnknownNetworkException(
              message: "",
              statusCode: -1,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(
        PremiumPurchasesState.entitlementsVerificationFailure(
          exception: exception,
        ),
      );
    }
  }
}
