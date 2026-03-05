import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeCarouselListItem extends StatelessWidget {
  final String? backgroundImage;
  final Color? backgroundColor;
  final Color? overlayColor;
  final Widget? badge;
  final String? title;
  final Widget? subtitle;
  final String? buttonText;
  final double? borderRadius;
  final VoidCallback? onButtonPressed;
  final VoidCallback? onTapSlide;
  final Alignment textAlignment;

  const HomeCarouselListItem({
    super.key,
    this.backgroundImage,
    this.backgroundColor,
    this.overlayColor,
    this.badge,
    this.title,
    this.subtitle,
    this.buttonText,
    this.onButtonPressed,
    this.onTapSlide,
    this.borderRadius,
    this.textAlignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapSlide,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.black,
          borderRadius: BorderRadius.circular(
            borderRadius ?? context.dsRadius.rd300,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            borderRadius ?? context.dsRadius.rd300,
          ),
          child: Stack(
            children: [
              if (backgroundImage != null) ...{
                backgroundImage!.contains("https") ||
                        backgroundImage!.contains("http")
                    ? Positioned.fill(
                      child: DSImage.network(
                        backgroundImage!,
                        fit: BoxFit.cover,
                      ),
                    )
                    : Positioned.fill(
                      child: DSImage.asset(backgroundImage!, fit: BoxFit.cover),
                    ),
              },
              if (overlayColor != null) ...{Container(color: overlayColor)},
              Align(
                alignment: textAlignment,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: context.dsSpacing.sp500,
                    horizontal: 22,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        textAlignment == Alignment.centerLeft
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (badge != null) ...[
                        badge!,
                        SizedBox(height: context.dsSpacing.sp200),
                      ],
                      DSText(
                        text: title ?? "",
                        textStyle: DSTextStyleType.secondaryHeadingXl,
                        textColor: context.dsColors.textOnSurfaceDefault,
                        textAlign: TextAlign.center,
                      ),
                      if (subtitle != null) ...[
                        SizedBox(height: context.dsSpacing.sp200),
                        subtitle!,
                      ],
                      if (buttonText != null) ...[
                        SizedBox(height: context.dsSpacing.sp500),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
                          child: IntrinsicWidth(
                            child: DSButtonTertiary(
                              size: DSButtonSize.small,
                              text: buttonText!,
                              onPressed: onButtonPressed,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
