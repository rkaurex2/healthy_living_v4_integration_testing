import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSStandardDropDown<T extends Object> extends StatefulWidget {
  final List<T> items;
  final T? selectedItem;
  final String Function(T) getLabel;
  final void Function(T) onChanged;
  final String hintText;
  final double? width;
  final bool enabled;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final TextEditingController textEditingController;
  final DSTextInputState? state;

  const DSStandardDropDown({
    required this.items,
    required this.getLabel,
    required this.onChanged,
    required this.hintText,
    required this.textEditingController,
    super.key,
    this.selectedItem,
    this.leadingIconPath,
    this.trailingIconPath,
    this.state,
    this.enabled = true,
    this.width,
  });

  @override
  State<DSStandardDropDown<T>> createState() => _DSStandardDropDownState<T>();
}

class _DSStandardDropDownState<T extends Object>
    extends State<DSStandardDropDown<T>> {
  final LayerLink _layerLink = LayerLink();
  final GlobalKey _fieldKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool _isDropdownOpen = false;
  final FocusNode _dropdownFocus = FocusNode();

  final ScrollController _scrollController = ScrollController();

  static const double _itemHeight = 48.0;
  static const double _panelMaxHeight = 300.0;

  void _toggleDropdown() async {
    if (!_dropdownFocus.hasFocus) {
      _dropdownFocus.requestFocus();
    }
    if (!widget.enabled) return;
    if (_isDropdownOpen) {
      _removeOverlay();
      return;
    }

    // Ensure the dropdown field is visible inside scrollable views
    final context = _fieldKey.currentContext;
    if (context != null) {
      await Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 150),
        alignment: 0.1,
      );
    }

    _showOverlay();
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _isDropdownOpen = false;
  }

  void _showOverlay() {
    final renderBox = _fieldKey.currentContext!.findRenderObject() as RenderBox;
    final fieldSize = renderBox.size;
    final fieldOffset = renderBox.localToGlobal(Offset.zero);
    final screenHeight = MediaQuery.of(context).size.height;

    final desiredHeight = (widget.items.length * _itemHeight).clamp(
      0,
      _panelMaxHeight,
    );
    final bool showAbove =
        fieldOffset.dy + fieldSize.height + desiredHeight > screenHeight;

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              // tap-outside to close
              Positioned.fill(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: _removeOverlay,
                  child: const SizedBox.shrink(),
                ),
              ),
              Positioned(
                width: widget.width ?? fieldSize.width,
                child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset:
                      showAbove
                          ? Offset(0, -desiredHeight - 4)
                          : Offset(0, fieldSize.height + 4),
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                        color: context.dsColors.surfaceNeutralBackgroundWhite,
                        border: Border.all(
                          color: context.dsColors.strokeNeutralDefault,
                        ),
                        borderRadius: BorderRadius.circular(
                          context.dsRadius.rd200,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.06),
                            offset: const Offset(0, 2),
                            blurRadius: 6,
                            spreadRadius: context.dsRadius.rd100,
                          ),
                        ],
                      ),
                      constraints: const BoxConstraints(
                        maxHeight: _panelMaxHeight,
                      ),
                      child: Scrollbar(
                        controller: _scrollController,
                        thumbVisibility: true,
                        child: ListView.builder(
                          controller: _scrollController,
                          padding: EdgeInsets.zero,
                          itemExtent: _itemHeight,
                          itemCount: widget.items.length,
                          itemBuilder: (context, index) {
                            final item = widget.items[index];
                            final label = widget.getLabel(item);

                            return InkWell(
                              onTap: () {
                                widget.textEditingController.text = label;
                                widget.onChanged(item);
                                _removeOverlay();
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.dsSpacing.sp300,
                                ),
                                child: DSText(
                                  text: label,
                                  textStyle:
                                      DSTextStyleType.primaryBodySRegular,
                                  textColor:
                                      context.dsColors.textNeutralOnWhite,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    _isDropdownOpen = true;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _removeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selectedItem != null &&
        widget.textEditingController.text.isEmpty) {
      widget.textEditingController.text = widget.getLabel(
        widget.selectedItem as T,
      );
    }

    return CompositedTransformTarget(
      link: _layerLink,
      child: SizedBox(
        width: widget.width,
        child: DSTextInput(
          key: _fieldKey,
          onTap: _toggleDropdown,
          controller: widget.textEditingController,
          readOnly: true,
          hintText: widget.hintText,
          size: DSTextInputSize.large,
          state: widget.state ?? DSTextInputState.defaultState,
          enabled: widget.enabled,
          leadingIconPath: widget.leadingIconPath,
          trailingIconOnTap: _toggleDropdown,
          trailingIconPath:
              widget.trailingIconPath ?? DSIcons.icChevronDownSmall,
          focusNode: _dropdownFocus,
        ),
      ),
    );
  }
}
