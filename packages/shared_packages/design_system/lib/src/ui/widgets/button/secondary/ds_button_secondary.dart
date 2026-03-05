import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:design_system/src/theme_extensions/ds_theme_build_context_extension.dart';
import 'package:design_system/src/ui/widgets/button/ds_button_content.dart';
import 'package:design_system/src/util/button/button_secondary_utils.dart';
import 'package:flutter/material.dart';

/// Button Icon Color Configuration
///
/// There are two parameters that control the icon color behavior:
///
/// [iconColor] - Custom color to be applied to both leading and trailing icons
/// Type: Color?
/// Default: null
///
/// [useCustomIconColor] - Flag to enable custom icon coloring
/// Type: bool
/// Default: false
///
/// Usage examples:
///
/// 1. Default behavior (uses theme colors):
/// ```dart
/// DSButtonSecondary(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
/// )
/// ```
///
/// 2. Custom icon color:
/// ```dart
/// DSButtonSecondary(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
///   iconColor: Colors.red,
///   useCustomIconColor: true, // Must be true to apply custom color
/// )
/// ```
///
/// 3. Use icon's original color:
/// ```dart
/// DSButtonSecondary(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
///   useCustomIconColor: true,
///   iconColor: null, // Will use icon's original color
/// )
/// ```
///
/// Note:
/// - When useCustomIconColor is false, the button uses theme-defined colors
/// - When useCustomIconColor is true and iconColor is null, uses icon's original color
/// - Custom color applies to both leading and trailing icons
/// - In loading state, loading icon color is controlled separately

class DSButtonSecondary extends StatefulWidget {
  const DSButtonSecondary({
    required this.text,
    super.key,
    this.secondaryText,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.iconSize,
    this.size = DSButtonSize.large,
    this.type = DSButtonType.fill,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.iconColor,
    this.trailIconColor,
    this.useCustomIconColor = false,
  });

  const DSButtonSecondary.fill({
    required this.text,
    super.key,
    this.secondaryText,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.iconSize,
    this.size = DSButtonSize.large,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.iconColor,
    this.trailIconColor,
    this.useCustomIconColor = false,
  }) : type = DSButtonType.fill;

  const DSButtonSecondary.outline({
    required this.text,
    super.key,
    this.secondaryText,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.iconSize,
    this.size = DSButtonSize.large,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.iconColor,
    this.trailIconColor,
    this.useCustomIconColor = false,
  }) : type = DSButtonType.outline;

  const DSButtonSecondary.ghost({
    required this.text,
    super.key,
    this.secondaryText,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.iconSize,
    this.size = DSButtonSize.large,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.iconColor,
    this.trailIconColor,
    this.useCustomIconColor = false,
  }) : type = DSButtonType.ghost;

  final String text;
  final String? secondaryText;
  final DSTextStyleType? textStyle;
  final VoidCallback? onPressed;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final DSButtonIconSize? iconSize;
  final DSButtonSize size;
  final DSButtonType type;
  final double? width;
  final DSButtonState state;
  final String? loadingText;
  final Color? textColor;
  final Color? iconColor;
  final Color? trailIconColor;
  final bool useCustomIconColor;

  @override
  State<DSButtonSecondary> createState() => _DSButtonSecondaryState();
}

class _DSButtonSecondaryState extends State<DSButtonSecondary> {
  bool _isPressed = false;
  String loadingText = "";

  DSButtonState get _currentState {
    // If widget state is not normal, use that state
    if (widget.state != DSButtonState.normal) return widget.state;
    // Otherwise, use pressed state if user is pressing
    if (_isPressed) return DSButtonState.pressed;
    return DSButtonState.normal;
  }

  bool get _isInteractive =>
      widget.state == DSButtonState.normal && widget.onPressed != null;

  @override
  Widget build(BuildContext context) {
    final isTablet = DesignSystemUtil().isTablet();
    final spec = widget.size.getButtonSizeSpec(isTablet: isTablet);
    final effectiveIconSize = widget.iconSize ?? spec.buttonIconSize;
    final buttonTheme = context.dsButtonSecondaryTheme;
    loadingText =
        widget.loadingText ??
        DesignSystemLocalizations.of(context)!.designSystem_loading_text;

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: spec.buttonHeight,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: 144),
        child: GestureDetector(
          onTapDown: _isInteractive ? (_) => _setPressed(true) : null,
          onTapUp: _isInteractive ? (_) => _setPressed(false) : null,
          onTapCancel: _isInteractive ? () => _setPressed(false) : null,
          onTap: _isInteractive ? widget.onPressed : null,
          child: DSButtonContent(
            state: _currentState,
            text: widget.text,
            secondaryText: widget.secondaryText,
            textStyle: widget.textStyle,
            loadingText: loadingText,
            leadingIconPath: widget.leadingIconPath,
            leadingIconSize: effectiveIconSize,
            trailingIconPath: widget.trailingIconPath,
            trailingIconSize: effectiveIconSize,
            buttonSpec: spec,
            size: widget.size,
            decoration: ButtonSecondaryUtils().getDecoration(
              type: widget.type,
              state: _currentState,
              buttonTheme: buttonTheme,
            ),
            textColor:
                widget.textColor ??
                ButtonSecondaryUtils().getTextColor(
                  type: widget.type,
                  state: _currentState,
                  buttonTheme: buttonTheme,
                ),
            leadingIconColor:
                widget.useCustomIconColor
                    ? widget.iconColor
                    : ButtonSecondaryUtils().getIconColor(
                      type: widget.type,
                      state: _currentState,
                      buttonTheme: buttonTheme,
                    ),
            trailingIconColor:
                widget.trailIconColor ??
                ButtonSecondaryUtils().getIconColor(
                  type: widget.type,
                  state: _currentState,
                  buttonTheme: buttonTheme,
                ),
            loadingIconColor: ButtonSecondaryUtils().getLoadingIconColor(
              type: widget.type,
              buttonTheme: buttonTheme,
            ),
          ),
        ),
      ),
    );
  }

  void _setPressed(bool pressed) {
    if (mounted) {
      setState(() => _isPressed = pressed);
    }
  }
}
