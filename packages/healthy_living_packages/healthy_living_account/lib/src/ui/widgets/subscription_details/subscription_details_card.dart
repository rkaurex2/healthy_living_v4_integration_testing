import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_state.dart';
import 'package:healthy_living_account/src/ui/widgets/subscription_details/subscription_detail_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';

class SubscriptionDetailsCard extends StatelessWidget {
  const SubscriptionDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final accountLocalizations = HealthyLivingAccountLocalizations.of(context)!;

    return BlocBuilder<SubscriptionDetailsBloc, SubscriptionDetailsState>(
      builder: (context, state) {
        final subscriptionDetailBloc = context.read<SubscriptionDetailsBloc>();
        final storeProduct = subscriptionDetailBloc.storeProduct;
        final activeEntitlementInfo =
            subscriptionDetailBloc.activeEntitlementInfo;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
              child: DSText(
                text: accountLocalizations.account_myAccount_details,
                textStyle: DSTextStyleType.secondaryHeadingS,
                textColor: context.dsColors.textPrimaryDefault,
              ),
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
            if (subscriptionDetailBloc.hasActiveSubscription ||
                state is SubscriptionDetailsLoadInProgress) ...{
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp400,
                  vertical: context.dsSpacing.sp200,
                ),
                decoration: BoxDecoration(
                  color: context.dsColors.surfaceNeutralContainerWhite,
                  borderRadius: BorderRadius.circular(context.dsRadius.rd400),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubscriptionDetailItem(
                      label:
                          accountLocalizations.account_subscriptionDetails_type,
                      value: _getSubscriptionDetails(
                        storeProduct: storeProduct,
                        accountLocalizations: accountLocalizations,
                      ),
                      isLoading: state is SubscriptionDetailsLoadInProgress,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    SubscriptionDetailItem(
                      label:
                          accountLocalizations
                              .account_subscriptionDetails_startDate,
                      value:
                          DateTimeUtils().formatDateTimeString(
                            dateTimeFormat:
                                DateTimeFormats.monthNameDayAndYearWithComma,
                            dateTimeString:
                                activeEntitlementInfo?.latestPurchaseDate ??
                                "",
                          ) ??
                          "",
                      isLoading: state is SubscriptionDetailsLoadInProgress,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                    SubscriptionDetailItem(
                      label:
                          accountLocalizations
                              .account_subscriptionDetails_renewalDate,
                      value:
                          DateTimeUtils().formatDateTimeString(
                            dateTimeFormat:
                                DateTimeFormats.monthNameDayAndYearWithComma,
                            dateTimeString:
                                activeEntitlementInfo?.expirationDate ?? "",
                          ) ??
                          "",
                      isLoading: state is SubscriptionDetailsLoadInProgress,
                    ),
                  ],
                ),
              ),
            } else ...{
              DSText(
                text:
                    accountLocalizations
                        .account_subscription_noActiveSubscriptions,
                textStyle: DSTextStyleType.primaryBodyMRegular,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
            },
          ],
        );
      },
    );
  }

  String _getSubscriptionDetails({
    required Package? storeProduct,
    required HealthyLivingAccountLocalizations accountLocalizations,
  }) {
    final title = storeProduct?.storeProduct.title;
    final priceString = storeProduct?.storeProduct.priceString;
    final subscriptionDuration = getFormattedPackageType(
      storeProduct?.packageType,
      accountLocalizations,
    );

    final primaryParts = <String>[];
    if (title.isValidValue) primaryParts.add(title!);
    if (priceString.isValidValue) primaryParts.add(priceString!);

    final result = primaryParts.join(' - ').trim();
    return subscriptionDuration.isValidValue
        ? '$result $subscriptionDuration'
        : result;
  }

  String getFormattedPackageType(
    PackageType? packageType,
    HealthyLivingAccountLocalizations localizations,
  ) {
    String formattedPackageType = "";
    if (packageType == PackageType.annual) {
      formattedPackageType = localizations.account_subscription_yearly;
    } else if (packageType == PackageType.monthly) {
      formattedPackageType = localizations.account_subscription_monthly;
    } else if (packageType == PackageType.weekly) {
      formattedPackageType = localizations.account_subscription_weekly;
    }
    return formattedPackageType;
  }
}
