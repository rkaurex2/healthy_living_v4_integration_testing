import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_account/src/ui/model/about_scores_ui_model.dart';

class AboutScoresItemWidget extends StatelessWidget {
  final AboutScoresUiModel aboutScoresUiModel;
  final VoidCallback onTap;

  const AboutScoresItemWidget({
    required this.aboutScoresUiModel,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(context.dsSpacing.sp500),
        decoration: BoxDecoration(
          color: aboutScoresUiModel.backgroundColor,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DSText(
              text: aboutScoresUiModel.title,
              textStyle: DSTextStyleType.primaryHeadingM,
              textColor: aboutScoresUiModel.titleColor,
            ),
            DSText(
              text: aboutScoresUiModel.description,
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: aboutScoresUiModel.titleColor,
            ),
          ],
        ),
      ),
    );
  }
}
