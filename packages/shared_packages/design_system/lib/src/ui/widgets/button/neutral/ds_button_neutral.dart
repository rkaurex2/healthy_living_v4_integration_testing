import 'package:design_system/design_system.dart';
import 'package:design_system/l10n/design_system_localizations.dart';
import 'package:design_system/src/theme_extensions/ds_theme_build_context_extension.dart';
import 'package:design_system/src/ui/widgets/button/ds_button_content.dart';
import 'package:design_system/src/util/button/button_neutral_utils.dart';
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
/// DSButtonNeutral(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
/// )
/// ```
///
/// 2. Custom icon color:
/// ```dart
/// DSButtonNeutral(
///   text: 'Button',
///   leadingIconPath: DSIcons.icAdd,
///   iconColor: Colors.red,
///   useCustomIconColor: true, // Must be true to apply custom color
/// )
/// ```
///
/// 3. Use icon's original color:
/// ```dart
/// DSButtonNeutral(
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

class DSButtonNeutral extends StatefulWidget {
  const DSButtonNeutral({
    required this.text,
    super.key,
    this.textStyle,
    this.onPressed,
    this.leadingIconPath,
    this.trailingIconPath,
    this.iconSize,
    this.size = DSButtonSize.large,
    this.type = DSButtonNeutralType.fill,
    this.width,
    this.state = DSButtonState.normal,
    this.loadingText,
    this.textColor,
    this.iconColor,
    this.useCustomIconColor = false,
  });

  const DSButtonNeutral.fill({
    required this.text,
    super.key,
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
    this.useCustomIconColor = false,
  }) : type = DSButtonNeutralType.fill;

  const DSButtonNeutral.outline({
    required this.text,
    super.key,
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
    this.useCustomIconColor = false,
  }) : type = DSButtonNeutralType.outline;

  final String text;
  final DSTextStyleType? textStyle;
  final VoidCallback? onPressed;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final DSButtonIconSize? iconSize;
  final DSButtonSize size;
  final DSButtonNeutralType type;
  final double? width;
  final DSButtonState state;
  final String? loadingText;
  final Color? textColor;
  final Color? iconColor;
  final bool useCustomIconColor;

  @override
  State<DSButtonNeutral> createState() => _DSButtonNeutralState();
}

class _DSButtonNeutralState extends State<DSButtonNeutral> {
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
    final buttonTheme = context.dsButtonNeutralTheme;
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
            textStyle: widget.textStyle,
            loadingText: loadingText,
            leadingIconPath: widget.leadingIconPath,
            leadingIconSize: effectiveIconSize,
            trailingIconPath: widget.trailingIconPath,
            trailingIconSize: effectiveIconSize,
            buttonSpec: spec,
            size: widget.size,
            decoration: ButtonNeutralUtils().getDecoration(
              type: widget.type,
              state: _currentState,
              buttonTheme: buttonTheme,
            ),
            textColor: widget.textColor ??
              ButtonNeutralUtils().getTextColor(
                buttonTheme: buttonTheme,
              ),
            leadingIconColor: widget.useCustomIconColor
                ? widget.iconColor
                : ButtonNeutralUtils().getIconColor(
                    state: _currentState,
                    buttonTheme: buttonTheme,
                  ),
            loadingIconColor: ButtonNeutralUtils().getLoadingIconColor(
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
