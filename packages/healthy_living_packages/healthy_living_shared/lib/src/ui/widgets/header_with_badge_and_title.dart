import 'package:design_system/design_system.dart';
import 'package:flutter/widgets.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HeaderWithBadgeAndTitle extends StatelessWidget {
  const HeaderWithBadgeAndTitle({
    required this.badgeWidget,
    super.key,
    this.trailIcon,
    this.leadIcon,
    this.title,
    this.onTapTrailIcon,
    this.onTapLeadIcon,
    this.textStyle,
    this.maxLine,
  });

  final Widget badgeWidget;
  final String? title;
  final String? trailIcon;
  final String? leadIcon;
  final VoidCallback? onTapTrailIcon;
  final VoidCallback? onTapLeadIcon;
  final DSTextStyleType? textStyle;
  final int? maxLine;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              if (leadIcon.isValidValue)
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: onTapLeadIcon,
                    child: DSImage.asset(
                      leadIcon!,
                      height: context.dsSizes.sz500,
                      width: context.dsSizes.sz500,
                    ),
                  ),
                ),
              DSSpacingWidget.horizontal(spacing: context.dsSizes.sz400),
              badgeWidget,
              DSSpacingWidget.horizontal(spacing: context.dsSizes.sz200),

              if (title.isValidValue) ...[
                Flexible(
                  child: DSText(
                    text: title,
                    textStyle:
                        textStyle ?? DSTextStyleType.primaryCaptionSemibold,
                    textColor: context.dsColors.textPrimaryDefault,
                    overflow: TextOverflow.ellipsis,
                    maxLines: maxLine??1,
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: context.dsSizes.sz400),
              ],
            ],
          ),
        ),

        if (trailIcon.isValidValue)
          GestureDetector(
            onTap: onTapTrailIcon,
            child: Align(
              alignment: Alignment.centerRight,
              child: DSImage.asset(
                trailIcon!,
                height: context.dsSizes.sz500,
                width: context.dsSizes.sz500,
              ),
            ),
          ),
      ],
    );
  }
}
