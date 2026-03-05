import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/models/home_guides_ui_model.dart';

class GuideHorizontalListItem extends StatelessWidget {
  final HomeGuidesUiModel homeGuidesUiModel;
  final VoidCallback onTap;

  const GuideHorizontalListItem({
    required this.homeGuidesUiModel,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: homeGuidesUiModel.backgroundColor,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              child: DSImage.asset(
                homeGuidesUiModel.image,
                height: 203,
                width: 152,
              ),
            ),
            Container(
              width: 136,
              height: 187,
              margin: EdgeInsets.all(context.dsSpacing.sp200),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(context.dsRadius.rd200),
                border: Border.all(
                  color: homeGuidesUiModel.borderColor,
                  width: 1,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(context.dsSpacing.sp200),
                child: DSText(
                  text: homeGuidesUiModel.title,
                  textStyle: DSTextStyleType.primaryHeadingM,
                  textColor: homeGuidesUiModel.titleColor,
                  textScaler: TextScaler.noScaling,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
