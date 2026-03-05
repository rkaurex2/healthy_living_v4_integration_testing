import 'package:design_system/design_system.dart';
import 'package:design_system/src/theme_extensions/ds_theme_build_context_extension.dart';
import 'package:design_system/src/util/text_input/text_input_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DSTextInput extends StatefulWidget {
  final String? label;
  final String? caption;
  final String? hintText;
  final String? leadingIconPath;
  final VoidCallback? leadingIconOnTap;
  final String? trailingIconPath;
  final DSTextInputSize size;
  final DSTextInputIconSize iconSize;
  final DSTextInputState state;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final VoidCallback? onTap;
  final bool enabled;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? maxLength;
  final bool isPasswordInput;
  final bool readOnly;
  final Function(PointerDownEvent)? onTapOutside;
  final BorderRadius? borderRadius;
  final bool enableTextClearIcon;
  final Color? captionTextColor;
  final VoidCallback? onTextClearIconTap;
  final TextCapitalization? textCapitalization;
  final VoidCallback? trailingIconOnTap;
  final DSTextStyleType? textStyle;

  const DSTextInput({
    super.key,
    this.label,
    this.caption,
    this.captionTextColor,
    this.hintText,
    this.leadingIconPath,
    this.leadingIconOnTap,
    this.trailingIconPath,
    this.size = DSTextInputSize.large,
    this.iconSize = DSTextInputIconSize.medium,
    this.state = DSTextInputState.defaultState,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onFieldSubmitted,
    this.onTap,
    this.enabled = true,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
    this.isPasswordInput = false,
    this.readOnly = false,
    this.onTapOutside,
    this.borderRadius,
    this.enableTextClearIcon = false,
    this.onTextClearIconTap,
    this.textCapitalization,
    this.trailingIconOnTap,
    this.textStyle,
  });

  @override
  State<DSTextInput> createState() => _DSTextInputState();
}

class _DSTextInputState extends State<DSTextInput> {
  late FocusNode _focusNode;
  late TextEditingController _controller;
  bool _isFocused = false;
  bool _obscureText = false;
  String _text = '';
  bool _suppressNextOnTapOutside = false;

  @override
  void initState() {
    super.initState();
    _focusNode = widget.focusNode ?? FocusNode();
    _obscureText = widget.isPasswordInput;
    _controller = widget.controller ?? TextEditingController();
    _focusNode.addListener(_onFocusChanged);
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  void _onFocusChanged() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isTablet = DesignSystemUtil().isTablet();
    final spec = widget.size.getTextInputSizeSpec(isTablet: isTablet);
    final iconSize = widget.iconSize.size;
    final textInputTheme = context.dsTextInputTheme;
    final (captionIconPath, captionIonColor) = TextInputUtils()
        .getCaptionIconRecord(
          enabled: widget.enabled,
          state: widget.state,
          textInputTheme: textInputTheme,
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: context.dsSizes.sz100,
      children: [
        if (widget.label != null) ...[
          DSText(
            text: widget.label!,
            textStyle: DSTextStyleType.primaryCaption,
            textColor: TextInputUtils().labelColor(
              enabled: widget.enabled,
              state: widget.state,
              textInputTheme: textInputTheme,
            ),
          ),
        ],
        Container(
          padding: spec.containerPadding,
          decoration: BoxDecoration(
            color: TextInputUtils().backgroundColor(
              enabled: widget.enabled,
              state: widget.state,
              textInputTheme: textInputTheme,
              isFocused: _isFocused,
            ),
            border: Border.all(
              color: TextInputUtils().borderColor(
                enabled: widget.enabled,
                state: widget.state,
                isFocused: _isFocused,
                textInputTheme: textInputTheme,
              ),
            ),
            borderRadius:
                widget.borderRadius ??
                BorderRadius.circular(context.dsRadius.rd200),
          ),
          child: Row(
            spacing: context.dsSpacing.sp200,
            children: [
              if (widget.leadingIconPath != null) ...{
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: widget.leadingIconOnTap,
                  child: DSImage.asset(
                    widget.leadingIconPath!,
                    width: iconSize,
                    height: iconSize,
                    color: TextInputUtils().leadingIconColor(
                      enabled: widget.enabled,
                      state: widget.state,
                      textInputTheme: textInputTheme,
                    ),
                  ),
                ),
              },
              Expanded(
                child: TextFormField(
                  readOnly: widget.readOnly,
                  controller: _controller,
                  focusNode: _focusNode,
                  enabled:
                      widget.enabled &&
                      widget.state != DSTextInputState.disabled,
                  onChanged: (changedText) {
                    if (widget.enableTextClearIcon) {
                      setState(() {
                        _text = changedText;
                      });
                    }
                    widget.onChanged?.call(changedText);
                  },
                  onTap: widget.onTap,
                  maxLength: widget.maxLength,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  style:
                      widget.textStyle?.getTextStyle().copyWith(
                        color: context.dsColors.textNeutralSecondary,
                      ) ??
                      DSTextStyleType.primaryBodyMRegular
                          .getTextStyle()
                          .copyWith(
                            color: TextInputUtils().textColor(
                              enabled: widget.enabled,
                              state: widget.state,
                              textInputTheme: textInputTheme,
                            ),
                          ),
                  decoration: InputDecoration(
                    counterText: '',
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(vertical: 0),
                    hintText: widget.hintText,
                    hintStyle: DSTextStyleType.primaryBodyMRegular
                        .getTextStyle()
                        .copyWith(
                          color: TextInputUtils().hintColor(
                            enabled: widget.enabled,
                            state: widget.state,
                            textInputTheme: textInputTheme,
                          ),
                        ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  keyboardType: widget.keyboardType,
                  minLines: 1,
                  maxLines: widget.maxLines,
                  obscureText: _obscureText,
                  onTapOutside: (event) {
                    if (_suppressNextOnTapOutside) {
                      _suppressNextOnTapOutside = false;
                      return;
                    }
                    widget.onTapOutside?.call(event);
                  },
                  textCapitalization:
                      widget.textCapitalization ?? TextCapitalization.none,
                ),
              ),
              if (_text.isNotEmpty && widget.enableTextClearIcon) ...{
                Listener(
                  behavior: HitTestBehavior.translucent,
                  onPointerDown: (_) {
                    // Ensure onTapOutside is suppressed BEFORE it fires
                    if (_focusNode.hasFocus) {
                      _suppressNextOnTapOutside = true;
                    }
                  },
                  child: InkWell(
                    onTap: () {
                      _controller.clear();
                      setState(() {
                        _text = '';
                      });
                      widget.onTextClearIconTap?.call();
                    },
                    child: DSImage.asset(
                      DSIcons.icClear,
                      width: 20,
                      height: 20,
                      color: context.dsColors.iconNeutralFade,
                    ),
                  ),
                ),
              },
              if (widget.isPasswordInput) ...{
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: DSImage.asset(
                    _obscureText ? DSIcons.icHide : DSIcons.icShow,
                    width: iconSize,
                    height: iconSize,
                    color: context.dsColors.iconPrimary,
                  ),
                ),
              },
              if (_shouldShowTrailingIcon()) ...{
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: widget.trailingIconOnTap,
                  child: DSImage.asset(
                    widget.trailingIconPath!,
                    width: iconSize,
                    height: iconSize,
                    color: TextInputUtils().trailingIconColor(
                      enabled: widget.enabled,
                      state: widget.state,
                      textInputTheme: textInputTheme,
                    ),
                  ),
                ),
              },
            ],
          ),
        ),
        if (widget.caption != null) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 2,
            children: [
              if (captionIconPath != null && captionIonColor != null) ...[
                SvgPicture.asset(
                  captionIconPath,
                  width: spec.captionIconSize,
                  height: spec.captionIconSize,
                  colorFilter: ColorFilter.mode(
                    captionIonColor,
                    BlendMode.srcIn,
                  ),
                ),
              ],
              Flexible(
                child: DSText(
                  text: widget.caption!,
                  textStyle: DSTextStyleType.primaryCaption,
                  textColor:
                      widget.captionTextColor ??
                      TextInputUtils().captionColor(
                        enabled: widget.enabled,
                        state: widget.state,
                        textInputTheme: textInputTheme,
                      ),
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }

  bool _shouldShowTrailingIcon() {
    if (widget.trailingIconPath == null) return false;
    if (widget.isPasswordInput) return false;
    if (widget.enableTextClearIcon) {
      return !_isFocused && widget.enableTextClearIcon;
    }

    return true;
  }
}
