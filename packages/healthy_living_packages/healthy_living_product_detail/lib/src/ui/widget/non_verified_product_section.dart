import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';

class NonVerifiedProductSection extends StatefulWidget {
  const NonVerifiedProductSection({required this.isBothNonVerified, super.key});

  final bool isBothNonVerified;

  @override
  State<NonVerifiedProductSection> createState() =>
      _NonVerifiedProductSectionState();
}

class _NonVerifiedProductSectionState extends State<NonVerifiedProductSection> {
  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.all(context.dsSpacing.sp300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSImage.asset(DSIcons.icCloseInCircle),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),

              Flexible(
                fit: FlexFit.loose,
                child: DSText(
                  text:
                      widget.isBothNonVerified
                          ? localizations
                              .productDetail_ingredients_theseProductsAreNotEWGVerified
                          : localizations
                              .productDetail_ingredients_notEWGVerified,
                  textStyle: DSTextStyleType.primaryBodySMedium,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
