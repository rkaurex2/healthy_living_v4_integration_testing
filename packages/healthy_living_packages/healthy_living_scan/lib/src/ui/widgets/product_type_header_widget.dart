import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProductTypeHeaderWidget extends StatelessWidget {
  const ProductTypeHeaderWidget({
    required this.titleImage,
    required this.typeLogo,
    required this.title,
    required this.description,
    super.key,
  });

  final String titleImage;
  final String typeLogo;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 23),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                DSImage.asset(titleImage, height: 200, width: 200),
                Positioned(
                  bottom: 0,
                  right: -10,
                  child: Container(
                    height: 70,
                    width: 70,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: context.dsColors.surfacePrimaryHover,
                    ),
                    child: DSImage.asset(
                      typeLogo,
                      width: context.dsSizes.sz700,
                      height: context.dsSizes.sz700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSText(
                text: title,
                textStyle: DSTextStyleType.primaryHeadingL,
                textColor: context.dsColors.textPrimaryDefault,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
              DSText(
                text: description,
                textStyle: DSTextStyleType.primaryBodyMRegular,
                textColor: context.dsColors.textPrimaryDefault,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
