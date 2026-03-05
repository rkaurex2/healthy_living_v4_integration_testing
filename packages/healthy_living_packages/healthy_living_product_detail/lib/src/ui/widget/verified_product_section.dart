import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';

class VerifiedProductSection extends StatefulWidget {
  const VerifiedProductSection({required this.isBothVerified, super.key});

  final bool isBothVerified;

  @override
  State<VerifiedProductSection> createState() => _VerifiedProductSectionState();
}

class _VerifiedProductSectionState extends State<VerifiedProductSection> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Padding(
            padding: EdgeInsets.only(
              left: context.dsSpacing.sp300,
              right: context.dsSpacing.sp300,
              top: context.dsSpacing.sp300,
              bottom: context.dsSpacing.sp200,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment:
                        widget.isBothVerified
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                    children: [
                      DSImage.asset(DSIcons.icCertificateCheckmarks),
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp200,
                      ),

                      Flexible(
                        fit: FlexFit.loose,
                        child: DSText(
                          text:
                              widget.isBothVerified
                                  ? localizations
                                      .productDetail_ingredients_theseProductsAreEWGVerified
                                  : localizations
                                      .productDetail_ingredients_thisProductIsEWGVerified,
                          textStyle: DSTextStyleType.primaryBodySMedium,
                          textColor: context.dsColors.textNeutralOnWhite,
                          lineHeight: 1.33,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 6),
                  child: DSImage.asset(
                    _isExpanded ? DSIcons.icChevronDown : DSIcons.icChevronUp,
                    height: context.dsSpacing.sp200,
                    width: context.dsSpacing.sp200,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded) ...[
          Padding(
            padding: EdgeInsets.only(
              left: context.dsSpacing.sp300,
              right: context.dsSpacing.sp300,
              bottom: context.dsSpacing.sp300,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: context.dsSpacing.sp500),
                  child: DSText(
                    text:
                        localizations
                            .productDetail_ingredients_rigorousScientificReview,
                    textStyle: DSTextStyleType.primaryBodySRegular,
                    textColor: context.dsColors.textNeutralSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
