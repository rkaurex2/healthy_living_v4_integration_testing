import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/models/guides_ui_model.dart';

class GuidesListItem extends StatelessWidget {
  final GuidesUiModel ewgGuidesUiModel;
  final VoidCallback onTap;
  final double imageWidth;
  final double imageHeight;

  const GuidesListItem({
    required this.ewgGuidesUiModel,
    required this.onTap,
    required this.imageWidth,
    required this.imageHeight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 119),
        decoration: BoxDecoration(
          color: ewgGuidesUiModel.backgroundColor,
          borderRadius: BorderRadius.circular(
            context.dsRadius.rd300,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: context.dsSpacing.sp400,
                right: imageWidth + context.dsSpacing.sp400,
                top: context.dsSpacing.sp400,
                bottom: context.dsSpacing.sp400,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: DSText(
                  text: ewgGuidesUiModel.title,
                  textStyle: DSTextStyleType.primaryHeadingM,
                  textColor: ewgGuidesUiModel.titleColor,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: DSImage.asset(
                ewgGuidesUiModel.image,
                height: imageHeight,
                width: imageWidth,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
