import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ResetPasswordConfirmationScreen extends StatelessWidget {
  final String openedFrom;

  const ResetPasswordConfirmationScreen({required this.openedFrom, super.key});

  bool get _isChangePasswordFlow =>
      openedFrom == StringConstants.changePassword;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TopBarHeader(
                      leadIcon: DSIcons.icClose,
                      centerIcon: DSIcons.icHealthyLivingLogoOneLine,
                      hideBackButton: !_isChangePasswordFlow,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: context.dsSpacing.sp400,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp700,
                              ),
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp700,
                              ),
                              DSImage.asset(
                                DSIcons.icResetPasswordConfirmation,
                              ),
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp700,
                              ),
                              DSText(
                                text:
                                    _isChangePasswordFlow
                                        ? localization
                                            .auth_changePassword_youHaveSuccessfullyChangedYourPassword
                                        : localization
                                            .auth_resetPassword_confirmationMessage,
                                textStyle: DSTextStyleType.primaryHeadingL,
                                textColor: context.dsColors.textPrimaryDefault,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),

                          Padding(
                            padding: EdgeInsets.all(context.dsSpacing.sp800),
                            child: DSButtonPrimary(
                              text:
                                  _isChangePasswordFlow
                                      ? localization.auth_signup_home
                                      : localization
                                          .auth_resetPassword_backToSignIn,
                              size: DSButtonSize.small,
                              width: 208,
                              onPressed: () {
                                if (_isChangePasswordFlow) {
                                  context.goNamed(AppRoutes.home.name);
                                } else {
                                  context.goNamed(
                                    AppRoutes.authScreen.name,
                                    queryParameters:
                                    AuthScreenParams(isLogin: true).toQueryParameters(),
                                    extra: {
                                      StringConstants.openedFrom: StringConstants.resetPassword,
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
