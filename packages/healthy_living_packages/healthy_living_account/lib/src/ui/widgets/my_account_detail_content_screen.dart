import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_state.dart';
import 'package:healthy_living_account/src/ui/widgets/my_account_detail_edit.dart';
import 'package:healthy_living_account/src/ui/widgets/my_account_manage.dart';
import 'package:healthy_living_account/src/ui/widgets/support_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyAccountDetailContentScreen extends StatelessWidget {
  const MyAccountDetailContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final myAccountBloc = context.read<MyAccountBloc>();
    return SingleChildScrollView(
      child: BlocListener<AppBloc, AppState>(
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
            return current is MyAccountDeleteUserSuccess ||
                current is MyAccountCopyRevenueCatIdSuccess ||
                current is MyAccountCopyRevenueCatIdFailure ||
                current is MyAccountSignOutSuccess;
          },
          listener: (context, state) async {
            if (state is MyAccountDeleteUserSuccess) {
              DSToast.show(
                title:
                    localization.account_myAccount_accountDeletedSuccessfully,
                context: context,
                duration: Duration(milliseconds: 500),
                onComplete: () {
                  if (context.mounted) {
                    context.go(AppRoutes.ftUxCreateAccount.path);
                  }
                },
              );
            } else if (state is MyAccountCopyRevenueCatIdSuccess) {
              DSToast.show(
                title: localization.account_copy_revenueCatIdSuccessfully,
                context: context,
              );
            } else if (state is MyAccountCopyRevenueCatIdFailure) {
              DSToast.showErrorToast(
                title: localization.account_copy_revenueCatIdFailure,
                context: context,
              );
            } else if (state is MyAccountSignOutSuccess) {
              context.read<AppBloc>().add(AppEvent.refreshUserLogin());
              DSToast.show(
                title: localization.account_myAccount_signedOutSuccessfully,
                context: context,
                duration: Duration(milliseconds: 500),
                onComplete: () {
                  if (context.mounted) {
                    context.go(AppRoutes.home.path);
                  }
                },
              );
            }
          },

          buildWhen: (previous, current) {
            return current is MyAccountInitial ||
                current is MyAccountDeleteUserSuccess ||
                current is MyAccountCopyRevenueCatIdSuccess ||
                current is MyAccountCopyRevenueCatIdFailure ||
                current is MyAccountLoadInProgress;
          },
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyAccountDetailEdit(),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),
                        MyAccountManage(),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),
                        SupportSection(),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),
                        //todo will uncomment when notification implemented

                        /*   DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: context.dsSpacing.sp200,
                          ),
                          child: DSText(
                            text: localization.account_myAccount_generals,
                            textStyle: DSTextStyleType.secondaryHeadingS,
                            textColor: context.dsColors.textNeutralOnWhite,
                          ),
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: context.dsColors.surfaceNeutralContainerWhite,
                            borderRadius: BorderRadius.circular(
                              context.dsRadius.rd300,
                            ),
                          ),

                          child: AccountContentTiles(
                            title:
                                localization
                                    .account_myAccount_notificationSettings,
                            icon: DSIcons.icNotification,
                            onTap: () {},
                          ),
                        ),*/
                      ],
                    ),
                  ),
                ),
                if (state is MyAccountLoadInProgress) ...{
                  AppLoader(),
                } else ...{
                  SizedBox.shrink(),
                },
              ],
            );
          },
        ),
      ),
    );
  }
}
