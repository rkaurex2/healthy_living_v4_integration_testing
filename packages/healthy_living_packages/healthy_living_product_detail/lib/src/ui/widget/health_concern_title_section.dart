import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/ui/widget/non_verified_product_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/verified_product_section.dart';

class HealthConcernTitleSection extends StatelessWidget {
  const HealthConcernTitleSection({
    required this.isEWGVerifiedFirstProduct,
    required this.isEWGVerifiedSecondProduct,
    super.key,
  });

  final bool isEWGVerifiedFirstProduct;
  final bool isEWGVerifiedSecondProduct;

  @override
  Widget build(BuildContext context) {
    final bothVerified =
        isEWGVerifiedFirstProduct && isEWGVerifiedSecondProduct;
    final bothNonVerified =
        !isEWGVerifiedFirstProduct && !isEWGVerifiedSecondProduct;

    Widget content;
    if (bothVerified) {
      content = const VerifiedProductSection(isBothVerified: true);
    } else if (bothNonVerified) {
      content = const NonVerifiedProductSection(isBothNonVerified: true);
    } else {
      content = Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:
                isEWGVerifiedFirstProduct
                    ? const VerifiedProductSection(isBothVerified: false)
                    : const NonVerifiedProductSection(isBothNonVerified: false),
          ),
          VerticalDivider(
            width: 0,
            thickness: 1,
            color: context.dsColors.strokeNeutralDefault,
          ),
          Expanded(
            child:
                isEWGVerifiedSecondProduct
                    ? const VerifiedProductSection(isBothVerified: false)
                    : const NonVerifiedProductSection(isBothNonVerified: false),
          ),
        ],
      );
    }

    return IntrinsicHeight(
      child: Container(
        decoration: BoxDecoration(
          color: context.dsColors.surfaceNeutralContainerWhite,
          border: Border.all(
            color: context.dsColors.strokeNeutralDefault,
            width: 1,
          ),
        ),
        child: content,
      ),
    );
  }
}
