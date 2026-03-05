import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/model/product_category_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SelectProductTypeItem extends StatelessWidget {
  final ProductCategoryUIModel productCategoryUIModel;
  final VoidCallback onTap;

  const SelectProductTypeItem({
    required this.productCategoryUIModel,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: context.dsColors.strokeNeutralDefault),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(7),
                bottomLeft: Radius.circular(7),
              ),
              child: DSImage.asset(
                productCategoryUIModel.imageAsset,
                width: 73,
                height: 73,
                fit: BoxFit.contain,
              ),
            ),
            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
            Expanded(
              child: Stack(
                children: [
                  if (productCategoryUIModel.isInstantScoring)
                    Positioned(
                      top: 0,
                      right: context.dsSpacing.sp200,
                      child: Container(
                        height: 22,
                        padding: EdgeInsets.symmetric(
                          horizontal: context.dsSpacing.sp100,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            context.dsRadius.rd200,
                          ),
                          color: context.dsColors.surfaceNeutralBackgroundLight,
                        ),
                        child: DSText(
                          text: localization.submitProduct_info_instantScoring,
                          textColor: context.dsColors.surfaceScoresBest,
                          textStyle: DSTextStyleType.primaryCaptionSemibold,
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: context.dsSpacing.sp200,
                      bottom: context.dsSpacing.sp200,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        DSText(
                          text: productCategoryUIModel.title,
                          textStyle: DSTextStyleType.primaryBodyMMedium,
                          textColor: context.dsColors.textNeutralOnWhite,
                        ),
                        if(productCategoryUIModel.subtitle.isValidValue)
                        DSText(
                          text:
                              productCategoryUIModel.subtitle
                                  .toSmartTitleCase(),
                          textStyle: DSTextStyleType.primarySubheadingXs,
                          textColor: context.dsColors.textNeutralSecondary,
                          lineHeight: DSTypography.lineHeightLh300,
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
    );
  }
}
