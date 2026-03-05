import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/ui/widget/health_concern_title_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_section_header.dart';

class ProductComparisonHealthConcernsSection extends StatelessWidget {
  const ProductComparisonHealthConcernsSection({
    required this.isEWGVerifiedFirstProduct,
    required this.isEWGVerifiedSecondProduct,
    super.key,
  });

  final bool isEWGVerifiedFirstProduct;
  final bool isEWGVerifiedSecondProduct;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        ProductComparisonSectionHeader(
          title: localizations.productDetail_findings_healthConcerns,
        ),
        HealthConcernTitleSection(
          isEWGVerifiedFirstProduct: isEWGVerifiedFirstProduct,
          isEWGVerifiedSecondProduct: isEWGVerifiedSecondProduct,
        ),
      ],
    );
  }
}
