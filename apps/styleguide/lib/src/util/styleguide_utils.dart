import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class StyleguideUtils {
  StyleguideUtils._();

  static final StyleguideUtils _instance = StyleguideUtils._();

  factory StyleguideUtils() => _instance;

  Map<String, Color> getTextColorsMap({required BuildContext context}) {
    return {
      "textNeutralOnWhite": context.dsColors.textNeutralOnWhite,
      "textNeutralDisabled": context.dsColors.textNeutralDisabled,
      "textNeutralSecondary": context.dsColors.textNeutralSecondary,
      "textNeutralFade": context.dsColors.textNeutralFade,
      "textSemanticOnSuccess": context.dsColors.textSemanticOnSuccess,
      "textSemanticOnWarning": context.dsColors.textSemanticOnWarning,
      "textSemanticOnError": context.dsColors.textSemanticOnError,
    };
  }

  Map<String, String> getIconsNamePathMap() {
    return {
      "add": DSIcons.icAdd,
      "minus": DSIcons.icMinus,
      "check": DSIcons.icCheck,
      "close": DSIcons.icClose,
      "warning": DSIcons.icWarning,
    };
  }

  List<String> getScoreList() {
    return [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "A",
      "B",
      "C",
      "D",
      "F",
      "1.0",
      "2.0",
      "3.0",
      "4.0",
      "5.0",
      "6.0",
      "7.0",
      "8.0",
      "9.0",
      "10",
    ];
  }
}
