import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FilterTile extends StatelessWidget {
  const FilterTile({
    required this.filterTitle,
    this.titleIcon,
    this.selectedFilterText,
    this.disabled = false,
    this.onTap,
    super.key,
  });

  final String filterTitle;
  final String? titleIcon;
  final String? selectedFilterText;
  final bool disabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colors = context.dsColors;
    final spacing = context.dsSpacing;

    return GestureDetector(
      onTap: disabled ? null : onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: spacing.sp400,
          vertical: spacing.sp600,
        ),
        child: Row(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DSText(
                  text: filterTitle,
                  textStyle: DSTextStyleType.primaryHeadingXs,
                  textColor: disabled
                      ? colors.textNeutralDisabled
                      : colors.textPrimaryDefault,
                ),
                if (titleIcon != null)
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: spacing.sp200),
                    child: DSImage.asset(
                      titleIcon!,
                      color: colors.iconPrimary,
                      width: context.dsSizes.sz400,
                      height: context.dsSizes.sz400,
                    ),
                  ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (selectedFilterText.isValidValue)
                    Flexible(
                      child: DSText(
                        text: selectedFilterText!,
                        textStyle:
                        DSTextStyleType.primaryBodyMRegular,
                        textColor: disabled
                            ? colors.textNeutralDisabled
                            : colors.textNeutralOnWhite,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                      ),
                    ),
                  Padding(
                    padding:
                    EdgeInsets.only(left: spacing.sp200),
                    child: DSImage.asset(
                      DSIcons.icChevronRight,
                      color: disabled
                          ? colors.iconNeutralDisabled
                          : colors.iconPrimary,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
