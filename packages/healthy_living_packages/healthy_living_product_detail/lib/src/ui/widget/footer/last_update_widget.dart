import 'package:design_system/design_system.dart'
    show DSSpacingWidget, DSText, DSTextStyleType;
import 'package:design_system/theme/theme_data/theme_data.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppRoutes,
        DateTimeFormats,
        DateTimeUtils,
        UrlConstants,
        Validate,
        WebviewScreenParams;

class LastUpdateWidget extends StatelessWidget {
  const LastUpdateWidget({required this.lastUpdated, super.key});

  final String? lastUpdated;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingProductDetailLocalizations.of(context)!;
    final formattedLastUpdateDate = DateTimeUtils().formatDateTimeString(
      dateTimeString: lastUpdated,
      dateTimeFormat: DateTimeFormats.monthNameAndYear,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (formattedLastUpdateDate.isValidValue) ...{
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
          DSText(
            text: localization.productDetail_footer_lastFoundOnMarket(
              formattedLastUpdateDate!,
            ),
            textStyle: DSTextStyleType.primaryCaption,
            textColor: context.dsColors.textNeutralSecondary,
          ),
        },
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
        DSText.rich(
          textSpan: TextSpan(
            children: [
              TextSpan(
                text:
                    localization
                        .productDetail_footer_affiliateCommissionDisclaimer,
              ),
              TextSpan(text: " "),
              TextSpan(
                text: localization.productDetail_footer_learnMoreHere,
                style: DSTextStyleType.primaryCaption.getTextStyle().copyWith(
                  color: context.dsColors.textPrimaryLink,
                ),
                recognizer:
                    TapGestureRecognizer()
                      ..onTap = () {
                        context.pushNamed(
                          AppRoutes.webView.name,
                          queryParameters:
                              WebviewScreenParams(
                                title: "",
                                url: UrlConstants.terms,
                              ).toQueryParameters(),
                        );
                      },
              ),
            ],
          ),
          textStyle: DSTextStyleType.primaryCaption,
          textColor: context.dsColors.textNeutralSecondary,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
      ],
    );
  }
}
