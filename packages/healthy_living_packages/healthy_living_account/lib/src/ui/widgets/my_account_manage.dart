import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/widgets/account_content_tiles.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyAccountManage extends StatelessWidget {
  const MyAccountManage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final bloc = context.read<MyAccountBloc>();
    final appBloc = context.read<AppBloc>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
          child: DSText(
            text: localization.account_myAccount_manage,
            textStyle: DSTextStyleType.secondaryHeadingS,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),
          child: Column(
            children: [
              if (appBloc.isPremiumUser) ...{
                // KEY: TestKeys.subscriptionSection
                AccountContentTiles(
                  key: const Key('subscription_section'),
                  title: localization.account_myAccount_subscription,
                  icon: DSIcons.icSubscription,
                  onTap: () {
                    context.pushNamed(AppRoutes.subscriptionDetailScreen.name);
                  },
                ),
                DSDivider(),
              },
              if (bloc.authProvider == null) ...[
                // KEY: TestKeys.changePasswordButton
                AccountContentTiles(
                  key: const Key('change_password_button'),
                  title: localization.account_myAccount_changePassword,
                  icon: DSIcons.icChangePassword,
                  onTap: () {
                    context.pushNamed(
                      AppRoutes.createNewPassword.name,
                      extra: {
                        StringConstants.openedFrom:
                            StringConstants.changePassword,
                      },
                    );
                  },
                ),
              ],
              DSDivider(),
              // KEY: TestKeys.signOutButton
              AccountContentTiles(
                key: const Key('sign_out_button'),
                title: localization.account_myAccount_signOut,
                icon: DSIcons.icProfileSignOut,
                iconColor: context.dsColors.iconPrimary,
                titleColor: context.dsColors.textPrimaryDefault,
                onTap: () {
                  bloc.add(MyAccountEvent.signOut());
                },
                showTrailIcon: false,
              ),
              DSDivider(),
              // KEY: TestKeys.deleteAccountButton
              AccountContentTiles(
                key: const Key('delete_account_button'),
                title: localization.account_myAccount_deleteAccount,
                icon: DSIcons.icDeleteAccount,
                iconColor: context.dsColors.surfaceSemanticErrorPress,
                titleColor: context.dsColors.textSemanticOnError,
                onTap: () {
                  DSBottomSheetWidget.showBottomSheet(
                    context: context,
                    isFullScreen: true,
                    isDismissible: false,
                    child: ConfirmationSheetView(
                      icon: DSIcons.icIllustrationZeroState,
                      title: localization.account_myAccount_deleteYourAccount,
                      description:
                          localization
                              .account_myAccount_thisActionWillPermanentlyDelete,
                      positiveButtonText:
                          localization.account_myAccount_keepMyAccount,
                      negativeButtonText:
                          localization.account_myAccount_deleteAccount,
                      onPositiveTap: () {
                        context.pop();
                      },
                      onNegativeTap: () {
                        bloc.add(MyAccountEvent.accountDeleteUser());
                        context.pop();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
