import 'package:design_system/design_system.dart';
import 'package:design_system/src/theme_extensions/ds_text_input_theme_extension.dart';
import 'package:flutter/material.dart';

class TextInputUtils {
  TextInputUtils._();

  static final TextInputUtils _instance = TextInputUtils._();

  factory TextInputUtils() => _instance;

  Color backgroundColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
    required bool isFocused,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.background;
    }

    if (isFocused) {
      return textInputTheme.defaultState.background;
    } else {
      switch (state) {
        case DSTextInputState.error:
          return textInputTheme.error.background;
        case DSTextInputState.warning:
          return textInputTheme.warning.background;
        case DSTextInputState.success:
          return textInputTheme.success.background;
        default:
          return textInputTheme.defaultState.background;
      }
    }
  }

  Color borderColor({
    required bool enabled,
    required DSTextInputState state,
    required bool isFocused,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.border;
    }

    if (isFocused && state == DSTextInputState.defaultState) {
      return textInputTheme.active.border;
    } else {
      switch (state) {
        case DSTextInputState.error:
          return textInputTheme.error.border;
        case DSTextInputState.warning:
          return textInputTheme.warning.border;
        case DSTextInputState.success:
          return textInputTheme.success.border;
        default:
          return textInputTheme.defaultState.border;
      }
    }
  }

  Color textColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.color;
    }
    return textInputTheme.defaultState.color;
  }

  Color hintColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.hintTextColor;
    }
    return textInputTheme.defaultState.hintTextColor;
  }

  Color labelColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.labelColor;
    }
    return textInputTheme.defaultState.labelColor;
  }

  Color captionColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.captionColor;
    }

    switch (state) {
      case DSTextInputState.error:
        return textInputTheme.error.captionColor;
      case DSTextInputState.warning:
        return textInputTheme.warning.captionColor;
      case DSTextInputState.success:
        return textInputTheme.success.captionColor;
      default:
        return textInputTheme.defaultState.captionColor;
    }
  }

  Color leadingIconColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.leadingIconColor;
    }

    switch (state) {
      case DSTextInputState.error:
      case DSTextInputState.warning:
      case DSTextInputState.success:
        return textInputTheme.success.leadingIconColor;
      default:
        return textInputTheme.defaultState.leadingIconColor;
    }
  }

  Color trailingIconColor({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    if (!enabled || state == DSTextInputState.disabled) {
      return textInputTheme.disabled.trailingIconColor;
    }

    switch (state) {
      case DSTextInputState.error:
      case DSTextInputState.warning:
      case DSTextInputState.success:
        return textInputTheme.success.trailingIconColor;
      default:
        return textInputTheme.defaultState.trailingIconColor;
    }
  }

  (String?, Color?) getCaptionIconRecord({
    required bool enabled,
    required DSTextInputState state,
    required DSTextInputThemeExtension textInputTheme,
  }) {
    String? captionIconPath;
    Color? captionIconColor;

    switch (state) {
      case DSTextInputState.error:
        captionIconPath = DSIcons.icWarningInformation;
        captionIconColor = textInputTheme.error.captionIconColor;
      case DSTextInputState.warning:
        captionIconPath = DSIcons.icWarning;
        captionIconColor = textInputTheme.warning.captionIconColor;
      case DSTextInputState.success:
        captionIconPath = DSIcons.icCheck;
        captionIconColor = textInputTheme.success.captionIconColor;
      default:
        captionIconPath = null;
        captionIconColor = null;
    }

    return (captionIconPath, captionIconColor);
  }
}
