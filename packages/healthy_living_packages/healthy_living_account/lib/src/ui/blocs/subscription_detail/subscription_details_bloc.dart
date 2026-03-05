import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_event.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

@Injectable()
class SubscriptionDetailsBloc
    extends Bloc<SubscriptionDetailsEvent, SubscriptionDetailsState> {
  EntitlementInfo? _activeEntitlementInfo;
  Package? _storeProduct;

  SubscriptionDetailsBloc() : super(const SubscriptionDetailsState.initial()) {
    on<SubscriptionDetailsFetched>(_onSubscriptionDetailsFetched);
  }

  EntitlementInfo? get activeEntitlementInfo => _activeEntitlementInfo;
  Package? get storeProduct => _storeProduct;

  bool get hasValidPriceString =>
      _storeProduct?.storeProduct.priceString.isValidValue == true;
  bool get hasValidPurchaseDate =>
      _activeEntitlementInfo?.latestPurchaseDate.isValidValue == true;
  bool get hasValidExpirationDate =>
      _activeEntitlementInfo?.expirationDate.isValidValue == true;

  bool get hasActiveSubscription =>
      hasValidPriceString && hasValidPurchaseDate && hasValidExpirationDate;

  Future<void> _onSubscriptionDetailsFetched(
    SubscriptionDetailsFetched event,
    Emitter<SubscriptionDetailsState> emit,
  ) async {
    emit(const SubscriptionDetailsState.loadInProgress());
    try {
      final customerInfo = await Purchases.getCustomerInfo();
      final offerings = await Purchases.getOfferings();

      _activeEntitlementInfo =
          customerInfo.entitlements.active[StringConstants
              .premiumEntitlementId];
      _storeProduct =
          offerings.current?.availablePackages
              .where(
                (availablePackage) =>
                    availablePackage.presentedOfferingContext.offeringIdentifier
                        .toLowerCase() ==
                    StringConstants.premiumEntitlementId.toLowerCase(),
              )
              .firstOrNull;

      emit(
        SubscriptionDetailsState.loadSuccess(
          activeEntitlementInfo: _activeEntitlementInfo,
          storeProduct: _storeProduct,
        ),
      );
    } on Exception catch (exception) {
      emit(SubscriptionDetailsState.loadFailure(exception: exception));
    }
  }
}
