import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWithTitle(
                leadIcon: DSIcons.icArrowLeft,
                title: localization.account_myAccount_aboutEWG,
                onTapLeadIcon: () {
                  context.pop();
                },
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
              DSImage.asset(DSIcons.icEwgAboutLogo, height: 123, width: 94),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
              Padding(
                padding: EdgeInsets.only(
                  left: context.dsSpacing.sp400,
                  right: context.dsSpacing.sp400,
                  bottom: context.dsSpacing.sp400,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSText(
                      text: localization.account_myAccount_ewgHelpsYouCreate,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                    DSText(
                      text: localization.account_myAccount_ourMission,
                      textStyle: DSTextStyleType.primaryHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                    DSText(
                      text: localization.account_myAccount_ewgIsANonProfit,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                    DSText(
                      text: localization.account_myAccount_ewgEmpowersMillions,
                      textStyle: DSTextStyleType.primaryHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                    DSText(
                      text: localization.account_myAccount_ewgExposesHarmful,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
                    DSText.rich(
                      textSpan: TextSpan(
                        text: localization.account_myAccount_getToKnowMore,
                        children: [
                          TextSpan(
                            text: localization.account_myAccount_ewgOrg,
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    HealthyLivingSharedUtils.urlLaunch(
                                      localizations:
                                          HealthyLivingSharedLocalizations.of(
                                            context,
                                          )!,
                                      url: UrlConstants.ewgWebsite,
                                      errorCallback: (value) {
                                        DSToast.show(
                                          context: context,
                                          title: value,
                                        );
                                      },
                                    );
                                  },
                            style: DSTextStyleType.primaryBodyMRegular
                                .getTextStyle()
                                .copyWith(
                                  color: context.dsColors.textPrimaryLink,
                                  decoration: TextDecoration.underline,
                                  decorationColor:
                                      context.dsColors.textPrimaryLink,
                                ),
                          ),
                        ],
                      ),
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
