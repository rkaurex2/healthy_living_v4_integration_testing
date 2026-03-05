import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSSearch extends StatelessWidget {
  final VoidCallback? onTap;
  final String? leadingIcon;
  final String? trailingIcon;
  final String? hintText;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderRadius;
  final DSTextStyleType? textStyle;
  final Color? textColor;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final int maxLine;
  final DSSearchIconSize? iconSize;
  final Color? leadingIconColor;
  final Color? trailingIconColor;
  final VoidCallback? onScannerTap;

  const DSSearch({
    this.onTap,
    this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    this.borderRadius,
    this.textStyle,
    this.textColor,
    this.borderColor,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
    this.backgroundColor,
    this.maxLine = 1,
    this.iconSize,
    this.leadingIconColor,
    this.trailingIconColor,
    this.onScannerTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final defaultTextStyleType = DSTextStyleType.primaryBodyMRegular;
    final defaultTextColor = context.dsColors.textNeutralSecondary;
    final defaultBorderRadius = context.dsRadius.rd1000;
    final computedBackgroundColor =
        backgroundColor ?? context.dsColors.iconOnSurfaceDefault;

    return InkWell(
      borderRadius: BorderRadius.circular(borderRadius ?? defaultBorderRadius),
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: computedBackgroundColor,
          borderRadius: BorderRadius.circular(
            borderRadius ?? defaultBorderRadius,
          ),
          border:
              borderColor != null
                  ? Border.all(color: borderColor!, width: 1)
                  : null,
        ),
        child: Row(
          spacing: context.dsSpacing.sp200,
          children: [
            if (leadingIcon != null) ...{
              DSImage.asset(
                leadingIcon!,
                height: iconSize?.size ?? DSSearchIconSize.large.size,
                width: iconSize?.size ?? DSSearchIconSize.large.size,
                color:
                    leadingIconColor ?? context.dsColors.iconOnSurfaceDefault,
              ),
            },
            if (hintText != null) ...{
              Expanded(
                child: DSText(
                  text: hintText,
                  maxLines: maxLine,
                  overflow: TextOverflow.ellipsis,
                  textStyle: textStyle ?? defaultTextStyleType,
                  textColor: textColor ?? defaultTextColor,
                ),
              ),
            } else ...{
              Spacer(),
            },
            if (trailingIcon != null) ...{
              GestureDetector(
                onTap: onScannerTap,
                child: DSImage.asset(
                  trailingIcon!,
                  height: iconSize?.size ?? DSSearchIconSize.large.size,
                  width: iconSize?.size ?? DSSearchIconSize.large.size,
                  color:
                      trailingIconColor ??
                      context.dsColors.iconOnSurfaceDefault,
                ),
              ),
            },
          ],
        ),
      ),
    );
  }
}
