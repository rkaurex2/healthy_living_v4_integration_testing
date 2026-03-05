import 'package:design_system/src/theme_extensions/models/ds_text_input_colors.dart';
import 'package:design_system/theme/theme.dart';
import 'package:design_system/theme/theme_data/color_theme_extension.dart';
import 'package:flutter/material.dart';

@immutable
class DSTextInputThemeExtension
    extends ThemeExtension<DSTextInputThemeExtension> {
  final DSTextInputColors defaultState;
  final DSTextInputColors active;
  final DSTextInputColors filled;
  final DSTextInputColors disabled;
  final DSTextInputColors error;
  final DSTextInputColors warning;
  final DSTextInputColors success;

  const DSTextInputThemeExtension({
    required this.defaultState,
    required this.active,
    required this.filled,
    required this.disabled,
    required this.error,
    required this.warning,
    required this.success,
  });

  factory DSTextInputThemeExtension.defaultTheme(
    DSColorThemeExtension dsColors,
  ) {
    return DSTextInputThemeExtension(
      defaultState: DSTextInputColors(
        background: dsColors.surfaceNeutralContainerWhite,
        color: dsColors.textNeutralOnWhite,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokeNeutralDefault,
        leadingIconColor: dsColors.iconPrimary,
        trailingIconColor: dsColors.iconPrimary,
        labelColor: dsColors.textNeutralOnWhite,
        captionColor: dsColors.textNeutralFade,
      ),
      active: DSTextInputColors(
        background: dsColors.surfaceNeutralContainerWhite,
        color: dsColors.textNeutralOnWhite,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokePrimaryDefault,
        leadingIconColor: dsColors.iconPrimary,
        trailingIconColor: dsColors.iconPrimary,
        labelColor: dsColors.textNeutralOnWhite,
        captionColor: dsColors.textNeutralFade,
      ),
      filled: DSTextInputColors(
        background: dsColors.surfaceNeutralContainerWhite,
        color: dsColors.textNeutralOnWhite,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokeNeutralDefault,
        leadingIconColor: dsColors.iconPrimary,
        trailingIconColor: dsColors.iconPrimary,
        labelColor: dsColors.textNeutralOnWhite,
        captionColor: dsColors.textNeutralFade,
      ),
      disabled: DSTextInputColors(
        background: dsColors.surfaceNeutralDisabled,
        color: dsColors.textNeutralDisabled,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokeNeutralDisabled,
        leadingIconColor: dsColors.iconNeutralDisabled,
        trailingIconColor: dsColors.iconNeutralDisabled,
        labelColor: dsColors.textNeutralDisabled,
        captionColor: dsColors.textNeutralDisabled,
      ),
      error: DSTextInputColors(
        background: dsColors.surfaceSemanticErrorLight,
        color: dsColors.textNeutralOnWhite,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokeSemanticOnError,
        leadingIconColor: dsColors.iconNeutralDefault,
        trailingIconColor: dsColors.iconPrimary,
        labelColor: dsColors.textNeutralOnWhite,
        captionColor: dsColors.textSemanticOnError,
        captionIconColor: dsColors.iconSemanticOnError,
      ),
      warning: DSTextInputColors(
        background: dsColors.surfaceSemanticWarningLight,
        color: dsColors.textNeutralOnWhite,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokeSemanticOnWarning,
        leadingIconColor: dsColors.iconNeutralDefault,
        trailingIconColor: dsColors.iconPrimary,
        labelColor: dsColors.textNeutralOnWhite,
        captionColor: dsColors.textSemanticOnWarning,
        captionIconColor: dsColors.iconSemanticOnWarning,
      ),
      success: DSTextInputColors(
        background: dsColors.surfaceSemanticSuccessLight,
        color: dsColors.textNeutralOnWhite,
        hintTextColor: dsColors.textNeutralDisabled,
        border: dsColors.strokeSemanticOnSuccess,
        leadingIconColor: dsColors.iconNeutralDefault,
        trailingIconColor: dsColors.iconPrimary,
        labelColor: dsColors.textNeutralOnWhite,
        captionColor: dsColors.textSemanticOnSuccess,
        captionIconColor: dsColors.iconSemanticOnSuccess,
      ),
    );
  }

  @override
  DSTextInputThemeExtension copyWith({
    DSTextInputColors? defaultState,
    DSTextInputColors? active,
    DSTextInputColors? filled,
    DSTextInputColors? disabled,
    DSTextInputColors? error,
    DSTextInputColors? errorActive,
    DSTextInputColors? warning,
    DSTextInputColors? warningActive,
    DSTextInputColors? success,
    DSTextInputColors? successActive,
  }) {
    return DSTextInputThemeExtension(
      defaultState: defaultState ?? this.defaultState,
      active: active ?? this.active,
      filled: filled ?? this.filled,
      disabled: disabled ?? this.disabled,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      success: success ?? this.success,
    );
  }

  @override
  DSTextInputThemeExtension lerp(
    ThemeExtension<DSTextInputThemeExtension>? other,
    double t,
  ) {
    if (other is! DSTextInputThemeExtension) {
      return this;
    }

    return DSTextInputThemeExtension(
      defaultState: DSTextInputColors(
        background:
            Color.lerp(
              defaultState.background,
              other.defaultState.background,
              t,
            )!,
        color: Color.lerp(defaultState.color, other.defaultState.color, t)!,
        hintTextColor:
            Color.lerp(
              defaultState.hintTextColor,
              other.defaultState.hintTextColor,
              t,
            )!,
        leadingIconColor:
            Color.lerp(
              defaultState.leadingIconColor,
              other.defaultState.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              defaultState.trailingIconColor,
              other.defaultState.trailingIconColor,
              t,
            )!,
        border: Color.lerp(defaultState.border, other.defaultState.border, t)!,
        labelColor:
            Color.lerp(
              defaultState.labelColor,
              other.defaultState.labelColor,
              t,
            )!,
        captionColor:
            Color.lerp(
              defaultState.captionColor,
              other.defaultState.captionColor,
              t,
            )!,
      ),
      active: DSTextInputColors(
        background: Color.lerp(active.background, other.active.background, t)!,
        color: Color.lerp(active.color, other.active.color, t)!,
        hintTextColor:
            Color.lerp(active.hintTextColor, other.active.hintTextColor, t)!,
        leadingIconColor:
            Color.lerp(
              active.leadingIconColor,
              other.active.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              active.trailingIconColor,
              other.active.trailingIconColor,
              t,
            )!,
        border: Color.lerp(active.border, other.active.border, t)!,
        labelColor: Color.lerp(active.labelColor, other.active.labelColor, t)!,
        captionColor:
            Color.lerp(active.captionColor, other.active.captionColor, t)!,
      ),
      filled: DSTextInputColors(
        background: Color.lerp(filled.background, other.filled.background, t)!,
        color: Color.lerp(filled.color, other.filled.color, t)!,
        hintTextColor:
            Color.lerp(filled.hintTextColor, other.filled.hintTextColor, t)!,
        leadingIconColor:
            Color.lerp(
              filled.leadingIconColor,
              other.filled.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              filled.trailingIconColor,
              other.filled.trailingIconColor,
              t,
            )!,
        border: Color.lerp(filled.border, other.filled.border, t)!,
        labelColor: Color.lerp(filled.labelColor, other.filled.labelColor, t)!,
        captionColor:
            Color.lerp(filled.captionColor, other.filled.captionColor, t)!,
      ),
      disabled: DSTextInputColors(
        background:
            Color.lerp(disabled.background, other.disabled.background, t)!,
        color: Color.lerp(disabled.color, other.disabled.color, t)!,
        hintTextColor:
            Color.lerp(
              disabled.hintTextColor,
              other.disabled.hintTextColor,
              t,
            )!,
        leadingIconColor:
            Color.lerp(
              disabled.leadingIconColor,
              other.disabled.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              disabled.trailingIconColor,
              other.disabled.trailingIconColor,
              t,
            )!,
        border: Color.lerp(disabled.border, other.disabled.border, t)!,
        labelColor:
            Color.lerp(disabled.labelColor, other.disabled.labelColor, t)!,
        captionColor:
            Color.lerp(disabled.captionColor, other.disabled.captionColor, t)!,
      ),
      error: DSTextInputColors(
        background: Color.lerp(error.background, other.error.background, t)!,
        color: Color.lerp(error.color, other.error.color, t)!,
        hintTextColor:
            Color.lerp(error.hintTextColor, other.error.hintTextColor, t)!,
        leadingIconColor:
            Color.lerp(
              error.leadingIconColor,
              other.error.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              error.trailingIconColor,
              other.error.trailingIconColor,
              t,
            )!,
        border: Color.lerp(error.border, other.error.border, t)!,
        labelColor: Color.lerp(error.labelColor, other.error.labelColor, t)!,
        captionColor:
            Color.lerp(error.captionColor, other.error.captionColor, t)!,
      ),
      warning: DSTextInputColors(
        background:
            Color.lerp(warning.background, other.warning.background, t)!,
        color: Color.lerp(warning.color, other.warning.color, t)!,
        hintTextColor:
            Color.lerp(warning.hintTextColor, other.warning.hintTextColor, t)!,
        leadingIconColor:
            Color.lerp(
              warning.leadingIconColor,
              other.warning.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              warning.trailingIconColor,
              other.warning.trailingIconColor,
              t,
            )!,
        border: Color.lerp(warning.border, other.warning.border, t)!,
        labelColor:
            Color.lerp(warning.labelColor, other.warning.labelColor, t)!,
        captionColor:
            Color.lerp(warning.captionColor, other.warning.captionColor, t)!,
      ),
      success: DSTextInputColors(
        background:
            Color.lerp(success.background, other.success.background, t)!,
        color: Color.lerp(success.color, other.success.color, t)!,
        hintTextColor:
            Color.lerp(success.hintTextColor, other.success.hintTextColor, t)!,
        leadingIconColor:
            Color.lerp(
              success.leadingIconColor,
              other.success.leadingIconColor,
              t,
            )!,
        trailingIconColor:
            Color.lerp(
              success.trailingIconColor,
              other.success.trailingIconColor,
              t,
            )!,
        border: Color.lerp(success.border, other.success.border, t)!,
        labelColor:
            Color.lerp(success.labelColor, other.success.labelColor, t)!,
        captionColor:
            Color.lerp(success.captionColor, other.success.captionColor, t)!,
      ),
    );
  }
}
