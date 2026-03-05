import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/models/list_title_horizontal_header_type.dart';

class HeaderTitleType extends StatelessWidget {
  final String text;
  final String? subText;
  final EdgeInsets? padding;
  final ListTitleHorizontalHeaderType? type;
  final VoidCallback? onPressed;

  const HeaderTitleType({
    required this.text,
    super.key,
    this.subText,
    this.padding,
    this.type = ListTitleHorizontalHeaderType.defaultType,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    EdgeInsets finalPadding = padding ?? EdgeInsets.symmetric(vertical: 0);
    return Container(
      padding: finalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (subText != null) ...{
                      DSText(
                        text: subText,
                        textStyle: DSTextStyleType.primaryCaptionSemibold,
                        textColor: context.dsColors.textNeutralSecondary,
                        lineHeight: 1.5,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    },
                    DSText(
                      text: text,
                      textStyle: DSTextStyleType.secondaryHeadingM,
                      textColor: context.dsColors.textNeutralOnWhite,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (type == ListTitleHorizontalHeaderType.withLinkType) ...[
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
                DSButtonIconCircle(
                  iconPath: DSIcons.icArrowRight,
                  onPressed: onPressed,
                  type: DSButtonIconCircleType.fillNeutral,
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }
}
