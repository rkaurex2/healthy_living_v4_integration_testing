import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:styleguide/l10n/styleguide_localizations.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'ds_checkbox_use_case', type: DSCheckbox)
Widget buildDSCheckboxUseCase(BuildContext context) {
  final localizations = StyleguideLocalizations.of(context)!;

  final initialStatus = context.knobs.list<DSCheckboxStatus>(
    label: localizations.styleguide_checkbox_status,
    options: DSCheckboxStatus.values,
    initialOption: DSCheckboxStatus.unSelected,
    labelBuilder: (value) => value.name,
  );

  final uiState = context.knobs.list<DSCheckboxState>(
    label: localizations.styleguide_state_label,
    options: DSCheckboxState.values,
    initialOption: DSCheckboxState.defaultState,
    labelBuilder: (value) => value.name,
  );

  final label = context.knobs.string(
    label: localizations.styleguide_checkbox_label,
    initialValue: localizations.styleguide_checkbox_label,
  );
  var currentStatus = initialStatus;
  var isLongPressed = false;

  return StatefulBuilder(
    builder: (context, setState) {
      return Center(
        child: Listener(
          onPointerDown: (_) => setState(() => isLongPressed = true),
          onPointerUp: (_) => setState(() => isLongPressed = false),
          child: DSCheckbox(
            status: currentStatus,
            state: isLongPressed
                ? DSCheckboxState.pressed
                : uiState,
            label: label,
            onChanged: (newStatus) {
              setState(() {
                currentStatus = newStatus;
              });
            },
          ),
        ),
      );
    },
  );
}
