import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class GuestOnboardingSection extends StatelessWidget {
  const GuestOnboardingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;

    return Container(
      padding: EdgeInsets.all(context.dsSpacing.sp400),
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralBackgroundMedium,
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DSButtonPrimary(
              text: localization.account_myAccount_createAnAccount,
              size: DSButtonSize.small,
              textColor: context.dsColors.textOnSurfaceDefault,
              onPressed: () {
                context.pushNamed(
                  AppRoutes.authScreen.name,
                  queryParameters:
                      AuthScreenParams(isLogin: false).toQueryParameters(),
                  extra: {
                    StringConstants.openedFrom: StringConstants.accounts,
                    StringConstants.isOpenFromSocialLogin: true,
                  },
                );
              },
            ),
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

          DSText.rich(
            textSpan: TextSpan(
              text: localization.account_myAccount_alreadyHaveAnAccount,
              children: [
                TextSpan(
                  text: localization.account_myAccount_signIn,
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          context.pushNamed(
                            AppRoutes.authScreen.name,
                            queryParameters:
                                AuthScreenParams(
                                  isLogin: true,
                                ).toQueryParameters(),
                            extra: {
                              StringConstants.openedFrom:
                                  StringConstants.accounts,
                            },
                          );
                        },
                  style: DSTextStyleType.primaryBodySRegular
                      .getTextStyle()
                      .copyWith(
                        color: context.dsColors.textPrimaryLink,
                        decoration: TextDecoration.underline,
                        decorationColor: context.dsColors.textPrimaryLink,
                      ),
                ),
              ],
            ),
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textPrimaryDefault,
          ),
        ],
      ),
    );
  }
}
