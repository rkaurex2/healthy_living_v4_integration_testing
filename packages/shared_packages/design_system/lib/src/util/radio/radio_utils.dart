import 'package:design_system/src/ui/models/radio/ds_radio_color.dart';
import 'package:design_system/src/ui/models/radio/ds_radio_state.dart';
import 'package:design_system/src/ui/models/radio/ds_radio_status.dart';
import 'package:design_system/theme/theme_data/color_theme_extension.dart';

class RadioUtils {
  RadioUtils._();

  static final RadioUtils _instance = RadioUtils._();

  factory RadioUtils() => _instance;

  DSRadioColors getRadioStyle({
    required DSRadioState state,
    required DSRadioStatus status,
    required DSColorThemeExtension dsColor,
  }) {
    if (state == DSRadioState.normal && status == DSRadioStatus.selected) {
      return DSRadioColors(
        backgroundColor: dsColor.surfaceNeutralBackgroundWhite,
        borderColor: dsColor.strokePrimaryDefault,
        selectionColor: dsColor.surfacePrimaryDefault,
        labelTextColor: dsColor.textNeutralOnWhite,
      );
    } else if (state == DSRadioState.normal &&
        status == DSRadioStatus.unSelected) {
      return DSRadioColors(
        backgroundColor: dsColor.surfaceNeutralBackgroundWhite,
        borderColor: dsColor.surfaceNeutralContainer5,
        selectionColor: dsColor.surfaceNeutralBackgroundWhite,
        labelTextColor: dsColor.textNeutralOnWhite,
      );
    } else if (state == DSRadioState.disabled &&
        status == DSRadioStatus.selected) {
      return DSRadioColors(
        backgroundColor: dsColor.surfaceNeutralDisabled,
        borderColor: dsColor.strokeNeutralDisabled,
        selectionColor: dsColor.surfacePrimaryDisabled,
        labelTextColor: dsColor.textNeutralFade,
      );
    }
    return DSRadioColors(
      backgroundColor: dsColor.surfaceNeutralDisabled,
      borderColor: dsColor.strokeNeutralDisabled,
      selectionColor: dsColor.surfaceNeutralDisabled,
      labelTextColor: dsColor.textNeutralFade,
    );
  }
}
