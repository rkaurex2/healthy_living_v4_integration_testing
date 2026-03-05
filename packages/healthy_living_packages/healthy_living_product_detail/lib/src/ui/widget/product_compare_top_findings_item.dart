import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/model/top_findings_section.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductCompareTopFindingsItem extends StatelessWidget {
  const ProductCompareTopFindingsItem({
    required this.itemTitle,
    required this.typeIconColor,
    required this.topFindingsSection,
    super.key,
  });

  final String itemTitle;
  final Color typeIconColor;
  final TopFindingsSection topFindingsSection;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        itemTitle.isValidValue
            ? Container(
              width: context.dsSpacing.sp200,
              height: context.dsSpacing.sp200,
              margin: EdgeInsets.symmetric(vertical: context.dsSpacing.sp100),
              decoration: BoxDecoration(
                color: typeIconColor,
                shape: BoxShape.circle,
              ),
            )
            : SizedBox.shrink(),
        DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
        Expanded(
          child: DSText(
            text: itemTitle.isValidValue ? itemTitle : _emptyListValue(context),
            textStyle: DSTextStyleType.primaryBodySRegular,
            textColor: context.dsColors.textNeutralSecondary,
          ),
        ),
      ],
    );
  }

  String _emptyListValue(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;
    if (topFindingsSection == TopFindingsSection.negative) {
      return localizations.productDetail_topFindings_noNegativeFindings;
    } else if (topFindingsSection == TopFindingsSection.positive) {
      return localizations.productDetail_topFindings_noPositiveFindings;
    } else if (topFindingsSection == TopFindingsSection.otherInfo) {
      return localizations.productDetail_topFindings_noOtherInfoFindings;
    }
    return localizations.productDetail_topFindings_noPositiveFindings;
  }
}
