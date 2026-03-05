import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_event.dart';
import 'package:healthy_living_account/src/ui/blocs/subscription_detail/subscription_details_state.dart';
import 'package:healthy_living_account/src/ui/widgets/subscription_details/subscription_details_card.dart';
import 'package:healthy_living_account/src/ui/widgets/subscription_details/subscription_manage_link.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_account/src/ui/widgets/subscription_details/subscription_description_section.dart';
import 'package:purchases_flutter/models/entitlement_info_wrapper.dart';

class SubscriptionDetailsScreen extends StatelessWidget {
  const SubscriptionDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final accountLocalizations = HealthyLivingAccountLocalizations.of(context)!;
    final sharedLocalizations = HealthyLivingSharedLocalizations.of(context)!;

    return BlocProvider(
      create:
          (_) =>
              injector.get<SubscriptionDetailsBloc>()
                ..add(const SubscriptionDetailsEvent.fetched()),
      child: BlocListener<SubscriptionDetailsBloc, SubscriptionDetailsState>(
        listener: (context, state) {
          if (state is SubscriptionDetailsLoadFailure) {
            final errorMessage = HealthyLivingSharedUtils.getServerErrorMessage(
              localizations: sharedLocalizations,
              exception: state.exception,
            );
            DSToast.showErrorToast(context: context, title: errorMessage);
          }
        },
        child: Scaffold(
          backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWithTitle(
                  leadIcon: DSIcons.icArrowLeft,
                  title: accountLocalizations.account_myAccount_subscription,
                  onTapLeadIcon: () => context.pop(),
                  textStyle: DSTextStyleType.primaryHeadingSBold,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SubscriptionDescriptionSection(),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                const SubscriptionDetailsCard(),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                BlocBuilder<
                                    SubscriptionDetailsBloc,
                                    SubscriptionDetailsState>(
                                  builder: (context, state) {
                                    final subscriptionDetailBloc =
                                    context.read<SubscriptionDetailsBloc>();

                                    if (state is SubscriptionDetailsLoadSuccess &&
                                        subscriptionDetailBloc.hasValidExpirationDate) {
                                      return DSText(
                                        text: _getCancellationNotice(
                                          accountLocalizations: accountLocalizations,
                                          activeEntitlementInfo:
                                          subscriptionDetailBloc.activeEntitlementInfo,
                                        ),
                                        textStyle: DSTextStyleType.primaryCaption,
                                        textColor:
                                        context.dsColors.textNeutralSecondary,
                                      );
                                    }
                                    return const SizedBox.shrink();
                                  },
                                ),
                                DSSpacingWidget.vertical(
                                  spacing: context.dsSpacing.sp400,
                                ),
                                const SubscriptionManageLink(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getCancellationNotice({
    required HealthyLivingAccountLocalizations accountLocalizations,
    EntitlementInfo? activeEntitlementInfo,
  }) {
    return "${accountLocalizations.account_subscriptionDetails_cancellationNotice} ${DateTimeUtils().formatDateTimeString(dateTimeFormat: DateTimeFormats.monthNameDayAndYearWithComma, dateTimeString: activeEntitlementInfo?.expirationDate)}";
  }
}
