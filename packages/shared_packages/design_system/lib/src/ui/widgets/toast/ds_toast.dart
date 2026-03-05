import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

const defaultToastDismissDuration = Duration(seconds: 3);

class DSToast extends StatelessWidget {
  final String title;
  final String? caption;
  final String? leadingIconPath;
  final bool showClose;
  final DSToastStyle toastStyle;
  final VoidCallback? onButtonTap;
  final VoidCallback? onDismissToast;
  final String? buttonText;
  const DSToast({
    required this.title,
    super.key,
    this.caption,
    this.leadingIconPath,
    this.onButtonTap,
    this.showClose = true,
    this.onDismissToast,
    this.toastStyle = DSToastStyle.light,
    this.buttonText,
  });
  // A static reference to the currently displayed toast
  static OverlayEntry? _currentToast;

  static void showErrorToast({
    required BuildContext context,
    required String title,
    String? caption,
    String? buttonText,
    bool showClose = false,
    VoidCallback? onButtonTap,
    DSToastDirection toastDirection = DSToastDirection.top,
    DSToastStyle appToastStyle = DSToastStyle.dark,
    Duration duration = defaultToastDismissDuration,
    VoidCallback? onComplete,
  }) {
    _showToast(
      context: context,
      title: title,
      caption: caption,
      leadingIconPath: DSIcons.icWarning,
      buttonText: buttonText,
      showClose: showClose,
      onButtonTap: onButtonTap,
      toastDirection: toastDirection,
      appToastStyle: appToastStyle,
      duration: duration,
      onComplete: onComplete,
    );
  }

  static void showSuccessToast({
    required BuildContext context,
    required String title,
    String? caption,
    String? leadingIconPath = DSIcons.icCheck,
    String? buttonText,
    bool showClose = false,
    VoidCallback? onButtonTap,
    DSToastDirection toastDirection = DSToastDirection.top,
    DSToastStyle appToastStyle = DSToastStyle.dark,
    Duration duration = defaultToastDismissDuration,
    VoidCallback? onComplete,
  }) {
    _showToast(
      context: context,
      title: title,
      caption: caption,
      leadingIconPath: leadingIconPath,
      buttonText: buttonText,
      showClose: showClose,
      onButtonTap: onButtonTap,
      toastDirection: toastDirection,
      appToastStyle: appToastStyle,
      duration: duration,
      onComplete: onComplete,
    );
  }

  static void show({
    required BuildContext context,
    required String title,
    String? caption,
    String? leadingIconPath,
    String? buttonText,
    bool showClose = false,
    VoidCallback? onButtonTap,
    DSToastDirection toastDirection = DSToastDirection.top,
    DSToastStyle appToastStyle = DSToastStyle.dark,
    Duration duration = defaultToastDismissDuration,
    VoidCallback? onComplete,
  }) {
    _showToast(
      context: context,
      title: title,
      caption: caption,
      leadingIconPath: leadingIconPath,
      buttonText: buttonText,
      showClose: showClose,
      onButtonTap: onButtonTap,
      toastDirection: toastDirection,
      appToastStyle: appToastStyle,
      duration: duration,
      onComplete: onComplete,
    );
  }

  static void _showToast({
    required BuildContext context,
    required String title,
    String? caption,
    String? leadingIconPath,
    String? buttonText,
    bool showClose = false,
    VoidCallback? onButtonTap,
    DSToastDirection toastDirection = DSToastDirection.top,
    DSToastStyle appToastStyle = DSToastStyle.dark,
    Duration duration = defaultToastDismissDuration,
    VoidCallback? onComplete,
  }) {
    // Remove the current toast if one is active
    if (_currentToast != null) {
      _currentToast?.remove();
      _currentToast = null;
    }

    final overlay = Overlay.of(context);
    late OverlayEntry entry;
    entry = OverlayEntry(
      builder:
          (context) => Positioned(
            top:
                toastDirection == DSToastDirection.top
                    ? MediaQuery.of(context).padding.top + 16
                    : null,
            left: context.dsSpacing.sp400,
            right: context.dsSpacing.sp400,
            bottom:
                toastDirection == DSToastDirection.bottom
                    ? context.dsSpacing.sp900
                    : null,
            child: Material(
              color: Colors.transparent,
              child: DSToast(
                title: title,
                caption: caption,
                leadingIconPath: leadingIconPath,
                toastStyle: appToastStyle,
                showClose: showClose,
                onButtonTap: onButtonTap,
                buttonText: buttonText,
                onDismissToast: () {
                  onComplete?.call();
                  entry.remove();
                  if (_currentToast == entry) _currentToast = null;
                },
              ),
            ),
          ),
    );
    overlay.insert(entry);
    _currentToast = entry;
    if (!showClose) {
      Future.delayed(duration, () {
        if (entry.mounted) {
          onComplete?.call();
          entry.remove();
          if (_currentToast == entry) _currentToast = null;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = toastStyle == DSToastStyle.dark;
    final dsColors = context.dsColors;
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: context.dsSizes.sz800),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.dsSpacing.sp400,
          vertical: context.dsSpacing.sp200,
        ),
        decoration: BoxDecoration(
          color:
              isDark
                  ? dsColors.surfacePrimaryDefault
                  : dsColors.surfaceNeutralBackgroundWhite,
          borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: context.dsRadius.rd300,
              spreadRadius: 3,
              color: Colors.black.withValues(alpha: 0.08),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: context.dsSpacing.sp400,
          children: [
            if (leadingIconPath != null) ...{
              DSImage.asset(
                leadingIconPath!,
                color:
                    isDark
                        ? dsColors.iconOnSurfaceDefault
                        : dsColors.iconPrimary,
              ),
            },
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DSText(
                    text: title,
                    textStyle: DSTextStyleType.primaryBodySMedium,
                    textColor:
                        isDark
                            ? dsColors.textOnSurfaceDefault
                            : dsColors.textNeutralOnWhite,
                  ),
                  if (caption != null)
                    DSText(
                      text: caption!,
                      textStyle: DSTextStyleType.primaryCaption,
                      textColor:
                          isDark
                              ? dsColors.textOnSurfaceDefault
                              : dsColors.textNeutralOnWhite,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            if (onButtonTap != null)
              DSButtonPrimary(
                size: DSButtonSize.small,
                width: 100,
                text: buttonText ?? '',
                onPressed: onButtonTap,
              ),
            if (showClose)
              GestureDetector(
                onTap: onDismissToast,
                child: DSImage.asset(
                  DSIcons.icClose,
                  color:
                      isDark
                          ? dsColors.iconOnSurfaceDefault
                          : dsColors.iconPrimary,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
