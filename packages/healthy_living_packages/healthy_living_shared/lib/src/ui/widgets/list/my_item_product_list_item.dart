import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyItemProductListItem extends StatelessWidget {
  final String imageUrl;
  final String brand;
  final String title;
  final bool isEWGVerified;
  final VoidCallback? onTap;

  const MyItemProductListItem({
    required this.imageUrl,
    required this.brand,
    required this.title,
    required this.isEWGVerified,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(context.dsRadius.rd200),
              child: DSImage.network(
                imageUrl,
                width: 76,
                height: 76,
                fit: BoxFit.cover,
                errorWidget: PlaceholderImage(
                  containerSize: 76,
                  imageSize: 66,
                  borderRadius: context.dsRadius.rd200,
                ),
              ),
            ),

            DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSText(
                    text: brand,
                    textStyle: DSTextStyleType.primaryBodyMMedium,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                  DSText(
                    text: title,
                    textStyle: DSTextStyleType.primaryBodyMMedium,
                    textColor: context.dsColors.textPrimaryDefault,
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                  if (isEWGVerified) ...{
                    Row(
                      children: [
                        DSImage.asset(
                          DSIcons.icEWGVerified,
                          width: 23,
                          height: 23,
                        ),
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp200,
                        ),
                        DSText(
                          text:
                              healthyLivingSharedLocalizations
                                  .general_ewgVerified,
                          textStyle: DSTextStyleType.primaryBodySRegular,
                          textColor: context.dsColors.textNeutralOnWhite,
                        ),
                      ],
                    ),
                  },
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
