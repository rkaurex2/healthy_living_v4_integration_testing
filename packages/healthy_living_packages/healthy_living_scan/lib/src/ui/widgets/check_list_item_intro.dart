import 'package:design_system/design_system.dart';
import 'package:healthy_living_scan/src/ui/model/checklist_item_intro_ui_model.dart';
import 'package:flutter/material.dart';

class CheckListItemIntro extends StatelessWidget {
  final ChecklistItemIntroUiModel checklistItemIntroUiModel;

  const CheckListItemIntro({
    required this.checklistItemIntroUiModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DSImage.asset(
          DSIcons.icCheck,
          color: context.dsColors.iconPrimary,
          height: 20,
          width: 20,
        ),
        DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSText(
                text: checklistItemIntroUiModel.title,
                textStyle: DSTextStyleType.primaryBodyMMedium,
                textColor: context.dsColors.textPrimaryDefault,
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
              DSText(
                text: checklistItemIntroUiModel.description,
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textPrimaryDefault,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
