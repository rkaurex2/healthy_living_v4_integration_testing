import 'package:design_system/design_system.dart';
import 'package:design_system/src/ui/widgets/drop_down/ds_standard_drop_down.dart';
import 'package:flutter/material.dart';

class DSDropdown<T extends Object> extends StatelessWidget {
  final DSDropdownType type;
  final List<T> items;
  final T? selectedItem;
  final String Function(T) getLabel;
  final ValueChanged<T?> onChanged;
  final String hintText;
  final String? errorText;
  final String? caption;
  final double? width;
  final bool enabled;
  final void Function(String)? onSearchChanged;
  final DSDropDownRemoteState? dsDropDownRemoteState;
  final TextEditingController textEditingController;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final DSTextInputState? textInputState;

  const DSDropdown._internal({
    required this.type,
    required this.items,
    required this.getLabel,
    required this.onChanged,
    required this.hintText,
    required this.textEditingController,
    this.selectedItem,
    this.errorText,
    this.width,
    this.enabled = true,
    this.dsDropDownRemoteState,
    this.onSearchChanged,
    this.leadingIconPath,
    this.textInputState,
    this.caption,
    this.trailingIconPath,
    super.key,
  });

  factory DSDropdown.standard({
    required List<T> items,
    required String Function(T) getLabel,
    required ValueChanged<T?> onChanged,
    required String hintText,
    required TextEditingController textEditingController,
    T? selectedItem,
    double? width,
    bool enabled = true,
    String? leadingIconPath,
    String? trailingIconPath,
    DSTextInputState? textInputState,
    Key? key,
  }) {
    return DSDropdown._internal(
      type: DSDropdownType.standard,
      items: items,
      getLabel: getLabel,
      onChanged: onChanged,
      hintText: hintText,
      selectedItem: selectedItem,
      width: width,
      enabled: enabled,
      leadingIconPath: leadingIconPath,
      textInputState: textInputState,
      trailingIconPath: trailingIconPath,
      textEditingController: textEditingController,
      key: key,
    );
  }

  factory DSDropdown.search({
    required List<T> items,
    required String Function(T) getLabel,
    required ValueChanged<T?> onChanged,
    required String hintText,
    required TextEditingController textEditingController,
    T? selectedItem,
    double? width,
    bool enabled = true,
    String? caption,
    String? leadingIconPath,
    DSTextInputState? textInputState,
    String? trailingIconPath,
    Key? key,
  }) {
    return DSDropdown._internal(
      type: DSDropdownType.searchable,
      items: items,
      getLabel: getLabel,
      onChanged: onChanged,
      hintText: hintText,
      selectedItem: selectedItem,
      width: width,
      enabled: enabled,
      caption: caption,
      leadingIconPath: leadingIconPath,
      textInputState: textInputState,
      trailingIconPath: trailingIconPath,
      textEditingController: textEditingController,
      key: key,
    );
  }

  factory DSDropdown.remoteSearch({
    required List<T> items,
    required String Function(T) getLabel,
    required ValueChanged<T?> onChanged,
    required String hintText,
    required DSDropDownRemoteState dsDropDownRemoteState,
    required void Function(String) onSearchChanged,
    required TextEditingController textEditingController,
    T? selectedItem,
    double? width,
    String? errorText,
    bool enabled = true,
    String? caption,
    String? leadingIconPath,
    DSTextInputState? textInputState,
    String? trailingIconPath,
    Key? key,
  }) {
    return DSDropdown._internal(
      type: DSDropdownType.remoteSearch,
      items: items,
      getLabel: getLabel,
      onSearchChanged: onSearchChanged,
      onChanged: onChanged,
      hintText: hintText,
      errorText: errorText,
      selectedItem: selectedItem,
      width: width,
      enabled: enabled,
      caption: caption,
      textInputState: textInputState,
      dsDropDownRemoteState: dsDropDownRemoteState,
      leadingIconPath: leadingIconPath,
      trailingIconPath: trailingIconPath,
      textEditingController: textEditingController,
      key: key,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (type == DSDropdownType.standard) {
      return DSStandardDropDown(
        items: items,
        getLabel: getLabel,
        onChanged: onChanged,
        width: width,
        hintText: hintText,
        enabled: enabled,
        leadingIconPath: leadingIconPath,
        trailingIconPath: trailingIconPath,
        textEditingController: textEditingController,
        state: textInputState,
      );
    } else if (type == DSDropdownType.remoteSearch) {
      return DSRemoteSearchDropdown(
        textEditingController: textEditingController,
        hintText: hintText,
        getLabel: getLabel,
        onChanged: onChanged,
        errorText: errorText,
        items: items,
        onSearchChanged: onSearchChanged,
        dsDropDownRemoteState:
            dsDropDownRemoteState ?? DSDropDownRemoteState.idle,
        enabled: enabled,
        leadingIconPath: leadingIconPath,
        trailingIconPath: trailingIconPath,
        state: textInputState,
        caption: caption,
      );
    } else {
      return DSSearchableDropDown(
        items: items,
        getLabel: getLabel,
        onChanged: onChanged,
        width: width,
        hintText: hintText,
        enabled: enabled,
        textEditingController: textEditingController,
        leadingIconPath: leadingIconPath,
        trailingIconPath: trailingIconPath,
        state: textInputState,
        caption: caption,
      );
    }
  }
}
