import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:design_system/src/theme_extensions/ds_theme_build_context_extension.dart';
import 'package:design_system/src/ui/widgets/button/ds_button_content.dart';
import 'package:design_system/src/util/button/button_primary_utils.dart';
import 'package:flutter/material.dart';

/// Button Icon Color Configuration
///
/// There are two parameters that control the icon color behavior:
///
/// [leadingIconColor] - Custom color to be applied to both leading and trailing icons
/// Type: Color?
/// Default: null
///
/// [useCustomLeadingIconColor] - Flag to enable custom icon coloring
/// Type: bool
/// Default: false
///
/// Usage examples:
///
/// 1. Default behavior (uses theme colors):
/// ```dart
/// DSButtonPrimary(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
/// )
/// ```
///
/// 2. Custom icon color:
/// ```dart
/// DSButtonPrimary(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
///   iconColor: Colors.red,
///   useCustomIconColor: true, // Must be true to apply custom color
/// )
/// ```
///
/// 3. Use icon's original color:
/// ```dart
/// DSButtonPrimary(
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

/// Outline Appearance (for `DSButtonPrimary.outline`)
///
/// [outlineColor] — Custom border/stroke color for the outline button.
/// Type: Color? | Default: null
///
/// [outlinePressedBackground] — Background color shown while the outline button is pressed.
/// Type: Color? | Default: null
///
/// Examples:
/// ```dart
/// // 1) Custom border only
/// DSButtonPrimary.outline(text: 'Save', outlineColor: Colors.blue);
///
/// // 2) Custom pressed background
/// DSButtonPrimary.outline(
///   text: 'Save',
///   outlinePressedBackground: Color(0xFFE8F0FE),
/// );
/// ```
///
/// When to use:
/// - You need brand-specific borders or pressed feedback beyond the theme.
/// - You want a distinct visual for secondary/tertiary actions using the outline style.
///
/// When NOT to use:
/// - For non-outline variants (`fill`, `ghost`) — these have no effect.
/// - If the design system theme already matches specs (prefer theme tokens).
/// - To change text/icon colors — use `textColor`, `iconColor`, and `useCustomIconColor` instead.

class DSButtonPrimary extends StatefulWidget {
  DSButtonPrimary({
    required this.text,
    super.key,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.leadingIconSize,
    this.trailingIconSize,
    this.size = DSButtonSize.large,
    this.type = DSButtonType.fill,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.leadingIconColor,
    this.trailingIconColor,
    this.useCustomLeadingIconColor = false,
    this.useCustomTrailingIconColor = false,
    this.outlineColor,
    this.outlinePressedBackground,
    this.padding,
  });

  DSButtonPrimary.fill({
    required this.text,
    super.key,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.leadingIconSize,
    this.trailingIconSize,
    this.size = DSButtonSize.large,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.leadingIconColor,
    this.trailingIconColor,
    this.useCustomLeadingIconColor = false,
    this.useCustomTrailingIconColor = false,
    this.padding,
  }) : type = DSButtonType.fill;

  DSButtonPrimary.outline({
    required this.text,
    super.key,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.leadingIconSize,
    this.trailingIconSize,
    this.size = DSButtonSize.large,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.leadingIconColor,
    this.trailingIconColor,
    this.useCustomLeadingIconColor = false,
    this.useCustomTrailingIconColor = false,
    this.outlineColor,
    this.outlinePressedBackground,
    this.padding,
  }) : type = DSButtonType.outline;

  DSButtonPrimary.ghost({
    required this.text,
    super.key,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.leadingIconSize,
    this.trailingIconSize,
    this.size = DSButtonSize.large,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.leadingIconColor,
    this.trailingIconColor,
    this.useCustomLeadingIconColor = false,
    this.useCustomTrailingIconColor = false,
    this.padding,
  }) : type = DSButtonType.ghost;

  final String text;
  final DSTextStyleType? textStyle;
  final VoidCallback? onPressed;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final DSButtonIconSize? leadingIconSize;
  final DSButtonIconSize? trailingIconSize;
  final DSButtonSize size;
  final DSButtonType type;
  final double? width;
  final DSButtonState state;
  final String? loadingText;
  final Color? textColor;
  final Color? leadingIconColor;
  final Color? trailingIconColor;
  final bool useCustomLeadingIconColor;
  final bool useCustomTrailingIconColor;
  Color? outlineColor;
  Color? outlinePressedBackground;
  final EdgeInsets? padding;

  @override
  State<DSButtonPrimary> createState() => _DSButtonPrimaryState();
}

class _DSButtonPrimaryState extends State<DSButtonPrimary> {
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
    final effectiveLeadingIconSize = widget.leadingIconSize ?? spec.buttonIconSize;
    final effectiveTrailingIconSize = widget.trailingIconSize ?? spec.buttonIconSize;
    final buttonTheme = context.dsButtonPrimaryTheme;
    loadingText =
        widget.loadingText ??
        DesignSystemLocalizations.of(context)!.designSystem_loading_text;

    return SizedBox(
      width: widget.width ?? double.infinity,
      height: spec.buttonHeight,
      child: ConstrainedBox(
        key: ValueKey('dsButtonPrimaryConstrainedBox'),
        constraints: const BoxConstraints(minWidth: 144),
        child: GestureDetector(
          onTapDown: _isInteractive ? (_) => _setPressed(true) : null,
          onTapUp: _isInteractive ? (_) => _setPressed(false) : null,
          onTapCancel: _isInteractive ? () => _setPressed(false) : null,
          onTap: _isInteractive ? widget.onPressed : null,
          child: DSButtonContent(
            state: _currentState,
            text: widget.text,
            textStyle: widget.textStyle,
            loadingText: loadingText,
            leadingIconPath: widget.leadingIconPath,
            leadingIconSize: effectiveLeadingIconSize,
            trailingIconPath: widget.trailingIconPath,
            trailingIconSize: effectiveTrailingIconSize,
            buttonSpec: spec,
            size: widget.size,
            decoration: ButtonPrimaryUtils().getDecoration(
              type: widget.type,
              state: _currentState,
              buttonTheme: buttonTheme,
              outlineColor: widget.outlineColor,
              outlinePressedBackground: widget.outlinePressedBackground,
            ),
            textColor:
                widget.textColor ??
                ButtonPrimaryUtils().getTextColor(
                  type: widget.type,
                  state: _currentState,
                  buttonTheme: buttonTheme,
                ),
            leadingIconColor:
                widget.useCustomLeadingIconColor
                    ? widget.leadingIconColor
                    : ButtonPrimaryUtils().getIconColor(
                      type: widget.type,
                      state: _currentState,
                      buttonTheme: buttonTheme,
                    ),
            trailingIconColor:
                widget.useCustomTrailingIconColor
                    ? widget.trailingIconColor
                    : ButtonPrimaryUtils().getIconColor(
                      type: widget.type,
                      state: _currentState,
                      buttonTheme: buttonTheme,
                    ),
            loadingIconColor: ButtonPrimaryUtils().getLoadingIconColor(
              type: widget.type,
              buttonTheme: buttonTheme,
            ),
            padding: widget.padding,
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
