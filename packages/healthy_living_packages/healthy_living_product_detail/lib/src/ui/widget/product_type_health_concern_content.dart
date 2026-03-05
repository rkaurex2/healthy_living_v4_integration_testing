import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductTypeHealthConcernContent extends StatelessWidget {
  const ProductTypeHealthConcernContent({
    required this.hazardType,
    required this.hazardValue,
    this.padding,
    super.key,
  });

  final String hazardType;
  final String hazardValue;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Container(
            width: context.dsSpacing.sp200,
            height: context.dsSpacing.sp200,
            decoration: BoxDecoration(
              color: hazardType.dotColor(context),
              shape: BoxShape.circle,
            ),
          ),
          DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
          Flexible(
            child: DSText(
              text: hazardValue,
              textStyle: DSTextStyleType.primaryButtonSRegular,
              textColor: context.dsColors.textNeutralSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
