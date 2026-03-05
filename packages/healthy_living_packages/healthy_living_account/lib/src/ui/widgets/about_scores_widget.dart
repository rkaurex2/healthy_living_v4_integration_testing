import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/model/about_scores_ui_model.dart';
import 'package:healthy_living_account/src/ui/widgets/about_scores_item_widget.dart';
import 'package:healthy_living_account/src/utils/account_screen_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AboutScoresWidget extends StatelessWidget {
  const AboutScoresWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final List<AboutScoresUiModel> items =
        AccountScreenUtils.getAboutScoresUiItem(localization, context.dsColors);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithTitle(
              leadIcon: DSIcons.icArrowLeft,
              title: localization.account_myAccount_aboutScores,
              onTapLeadIcon: () {
                context.pop();
              },
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: context.dsSpacing.sp400,
                    right: context.dsSpacing.sp400,
                    bottom: context.dsSpacing.sp400,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp400,
                      ),
                      DSText(
                        text:
                            localization
                                .account_myAccount_productsScoresByCategory,
                        textStyle: DSTextStyleType.primaryHeadingS,
                        textColor: context.dsColors.textNeutralOnWhite,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp100,
                      ),
                      DSText(
                        text:
                            localization
                                .account_myAccount_learnHowWeRateAndReview,
                        textStyle: DSTextStyleType.primaryBodySRegular,
                        textColor: context.dsColors.textNeutralSecondary,
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp600,
                      ),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: items.length,
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return AboutScoresItemWidget(
                            aboutScoresUiModel: items[index],
                            onTap: () {
                              context.pushNamed(
                                AppRoutes.webView.name,
                                queryParameters:
                                    WebviewScreenParams(
                                      title: items[index].title,
                                      url: items[index].url,
                                    ).toQueryParameters(),
                              );
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return DSSpacingWidget.vertical(
                            spacing: DSSpacing.sp200,
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
