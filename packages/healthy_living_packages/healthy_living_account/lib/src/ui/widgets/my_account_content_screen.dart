import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_state.dart';
import 'package:healthy_living_account/src/ui/widgets/authenticated_account.dart';
import 'package:healthy_living_account/src/ui/widgets/guest_account.dart';
import 'package:healthy_living_account/src/ui/widgets/help_mission_section.dart';
import 'package:healthy_living_account/src/ui/widgets/my_account_resources.dart';
import 'package:healthy_living_account/src/ui/widgets/premium_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyAccountContentScreen extends StatelessWidget {
  const MyAccountContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final myAccountBloc = context.read<MyAccountBloc>();
    final appBloc = context.read<AppBloc>();
    return BlocListener<AppBloc, AppState>(
      listenWhen: (previous, current) {
        return current is RefreshUserLoginState;
      },
      listener: (context, state) {
        if (state is RefreshUserLoginState) {
          myAccountBloc.add(AccountInitialized());
        }
      },
      child: BlocConsumer<MyAccountBloc, MyAccountState>(
        listenWhen: (previous, current) {
          return
              current is MyAccountDeleteUserSuccess ||
              current is ManageIngredientPreference ||
              current is StartedIngredientPreference;
        },
        listener: (context, state) async {
          if (state is ManageIngredientPreference) {
            await context.pushNamed(
              AppRoutes.accountIngredientPreferenceCategory.name,
            );
          } else if (state is StartedIngredientPreference) {
            await context.pushNamed(
              AppRoutes.ftUxAccountAboutIngredientPreference.name,
            );
          }
        },
        buildWhen: (previous, current) {
          return current is MyAccountInitial ||
              current is MyAccountLoadInProgress ||
              current is MyAccountFailure;
        },
        builder: (context, state) {
          // Show persistent error view for initial data-load failure
          if (state is MyAccountFailure) {
            return DSErrorView(
              onRetry: () => context
                  .read<MyAccountBloc>()
                  .add(const AccountInitialized()),
            );
          }
          return Stack(
            alignment: Alignment.center,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: context.dsSpacing.sp400),
                      alignment: Alignment.center,
                      child: DSImage.asset(
                        DSIcons.icHealthyLivingLogoOneLine,
                        width: 145,
                      ),
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: context.dsSizes.sz200,
                            ),
                            child: DSText(
                              text: localization.account_myAccount_myAccount,
                              textStyle: DSTextStyleType.secondaryHeadingS,
                              textColor: context.dsColors.textNeutralOnWhite,
                            ),
                          ),

                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp100,
                          ),
                          !appBloc.isAuthenticated
                              ? GuestOnboardingSection()
                              : AccountInfoCard(
                                name:
                                    "${myAccountBloc.userDataModel?.firstName} ${myAccountBloc.userDataModel?.lastName}",
                                email: myAccountBloc.userDataModel?.email ?? "",
                              ),
                        ],
                      ),
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                    DSDivider(),
                    Container(
                      color: context.dsColors.surfaceNeutralBackgroundLight,
                      padding: EdgeInsets.all(context.dsSizes.sz400),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BlocBuilder<AppBloc, AppState>(
                            buildWhen:
                                (_, current) =>
                                    current is SubscribeToPremiumSuccess,
                            builder: (context, state) {
                              if (appBloc.isAuthenticated) {
                                return BlocListener<
                                  PremiumPurchasesBloc,
                                  PremiumPurchasesState
                                >(
                                  listenWhen: (_, current) {
                                    return current is PaywallLoadSuccess &&
                                        current.paywallSource ==
                                            PaywallSource.myAccount;
                                  },
                                  listener: (context, state) {
                                    if (state is PaywallLoadSuccess &&
                                        (state.paywallResult ==
                                                AppPaywallResult.purchased ||
                                            state.paywallResult ==
                                                AppPaywallResult.restored)) {
                                      context
                                          .pushNamed(
                                            AppRoutes
                                                .entitlementVerificationScreen
                                                .name,
                                          )
                                          .then((result) {
                                            if (!context.mounted) {
                                              return;
                                            }

                                            HealthyLivingSharedUtils.entitlementVerificationScreenOnComplete(
                                              context: context,
                                              result: result,
                                            );
                                          });
                                    }
                                  },
                                  child: Column(
                                    children: [
                                      PremiumSection(
                                        onTap: () {
                                          context.read<PremiumPurchasesBloc>().add(
                                            PremiumPurchasesEvent.paywallPresented(
                                              paywallSource:
                                                  PaywallSource.myAccount,
                                            ),
                                          );
                                        },
                                        onTapIngredientPreference: () {
                                          context.read<MyAccountBloc>().add(
                                            MyAccountEvent.ingredientPreferenceTapped(),
                                          );
                                        },
                                        isPremiumFtUxViewed:
                                            context
                                                .read<MyAccountBloc>()
                                                .isPremiumFtUxViewed ??
                                            false,
                                        isPremiumUser: appBloc.isPremiumUser,
                                      ),
                                      DSSpacingWidget.vertical(
                                        spacing: context.dsSizes.sz500,
                                      ),
                                    ],
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          ),
                          ResourcesSection(
                            email: myAccountBloc.userDataModel?.email ?? "",
                            country: myAccountBloc.userDataModel?.country,
                            isGuestUserLogin: !appBloc.isAuthenticated,
                            zipcode: myAccountBloc.userDataModel?.zipCode ?? "",
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSizes.sz500,
                          ),

                          const HelpMissionSection(),
                          //todo will remove after client's confirmation
                          /*
                          if (appBloc.isAuthenticated) ...[
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp400,
                            ),
                            GestureDetector(
                              onTap: () {
                                myAccountBloc.add(MyAccountEvent.signOut());
                              },
                              child: DSText(
                                text: localization.account_myAccount_signOut,
                                textStyle: DSTextStyleType.primaryLinkM,
                                textColor: context.dsColors.textPrimaryDefault,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],*/

                          // Terms & Privacy
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: context.dsSpacing.sp500,
                              top: context.dsSpacing.sp700,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // KEY: TestKeys.termsLink
                                GestureDetector(
                                  key: const Key('terms_link'),
                                  onTap: () {
                                    context.pushNamed(
                                      AppRoutes.webView.name,
                                      queryParameters:
                                          WebviewScreenParams(
                                            title:
                                                localization
                                                    .account_myAccount_termsAndConditions,
                                            url: UrlConstants.terms,
                                          ).toQueryParameters(),
                                    );
                                  },
                                  child: DSText(
                                    text:
                                        localization
                                            .account_myAccount_termsAndConditions,
                                    textStyle: DSTextStyleType.primaryCaption,
                                    textColor:
                                        context.dsColors.textNeutralSecondary,
                                  ),
                                ),
                                // KEY: TestKeys.privacyLink
                                GestureDetector(
                                  key: const Key('privacy_link'),
                                  onTap: () {
                                    context.pushNamed(
                                      AppRoutes.webView.name,
                                      queryParameters:
                                          WebviewScreenParams(
                                            title:
                                                localization
                                                    .account_myAccount_privacy,
                                            url: UrlConstants.privacyPolicy,
                                          ).toQueryParameters(),
                                    );
                                  },
                                  child: DSText(
                                    text:
                                        localization.account_myAccount_privacy,
                                    textStyle: DSTextStyleType.primaryCaption,
                                    textColor:
                                        context.dsColors.textNeutralSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (state is MyAccountLoadInProgress) ...[
                ModalBarrier(dismissible: false, color: Colors.transparent),
                AppLoader(),
              ] else ...{
                SizedBox.shrink(),
              },
            ],
          );
        },
      ),
    );
  }
}
