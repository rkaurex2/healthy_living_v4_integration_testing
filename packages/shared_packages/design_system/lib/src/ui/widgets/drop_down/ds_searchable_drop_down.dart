import 'dart:math' as math;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSSearchableDropDown<T> extends StatefulWidget {
  final List<T> items;
  final String Function(T) getLabel;
  final void Function(T) onChanged;
  final String hintText;
  final double? width;
  final String? caption;
  final bool enabled;
  final TextEditingController textEditingController;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final DSTextInputState? state;

  const DSSearchableDropDown({
    required this.items,
    required this.getLabel,
    required this.onChanged,
    required this.hintText,
    required this.textEditingController,
    this.width,
    this.caption,
    this.leadingIconPath,
    this.trailingIconPath,
    this.state,
    this.enabled = true,
    super.key,
  });

  @override
  State<DSSearchableDropDown<T>> createState() =>
      _DSSearchableDropDownState<T>();
}

class _DSSearchableDropDownState<T> extends State<DSSearchableDropDown<T>> {
  final LayerLink _layerLink = LayerLink();
  final FocusNode _focusNode = FocusNode();
  final GlobalKey _textFieldKey = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  OverlayEntry? _overlayEntry;
  List<T> _filteredOptions = [];

  static const double _maxOverlayHeight = 200.0;

  void _openOverlay() {
    if (_overlayEntry != null) return;
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  @override
  void initState() {
    super.initState();

    _filteredOptions = widget.items;

    widget.textEditingController.addListener(() {
      _onChanged(widget.textEditingController.text);
    });

    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        // When the field gains focus, show/update overlay if there are options.
        if (_filteredOptions.isNotEmpty && _overlayEntry == null) {
          _openOverlay();
        } else {
          _overlayEntry?.markNeedsBuild();
        }
      }
      // ❗ On focus loss we DO NOT close overlay and DO NOT clear text.
    });
  }

  void _closeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox =
        _textFieldKey.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    final screenHeight = MediaQuery.of(context).size.height;
    final spaceBelow = screenHeight - offset.dy - size.height;
    final spaceAbove = offset.dy;
    final showAbove = spaceBelow < _maxOverlayHeight && spaceAbove > spaceBelow;

    final availableHeight = showAbove ? spaceAbove : spaceBelow;
    final overlayHeight = math.min(_maxOverlayHeight, availableHeight);

    return OverlayEntry(
      builder: (context) {
        final renderBox =
            _textFieldKey.currentContext!.findRenderObject() as RenderBox;
        final size = renderBox.size;

        return Stack(
          children: [
            // Full-screen tap handler:
            // - Tap on field: refocus + keep overlay/text
            // - First tap outside (keyboard open): close keyboard only
            // - Second tap outside (keyboard closed): close overlay
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTapDown: (details) {
                final tapPosition = details.globalPosition;

                // Compute text field rect in global coords
                final fieldBox =
                    _textFieldKey.currentContext!.findRenderObject()
                        as RenderBox;
                final fieldOffset = fieldBox.localToGlobal(Offset.zero);
                final fieldSize = fieldBox.size;
                final fieldRect = Rect.fromLTWH(
                  fieldOffset.dx,
                  fieldOffset.dy,
                  fieldSize.width,
                  fieldSize.height,
                );

                // 1️⃣ Tap is on the text field → refocus, keep overlay & text
                if (fieldRect.contains(tapPosition)) {
                  if (!_focusNode.hasFocus) {
                    _focusNode.requestFocus();
                  }
                  return;
                }

                // 2️⃣ Tap is outside the text field
                if (_focusNode.hasFocus) {
                  // First outside tap while keyboard is open → close keyboard only
                  _focusNode.unfocus();
                  return;
                }

                // 3️⃣ Keyboard already closed & overlay is showing → close overlay
                if (_overlayEntry != null) {
                  _closeOverlay();
                }
                // Note: text is NEVER cleared here.
              },
              child: const SizedBox.expand(),
            ),

            // The dropdown positioned relative to the text field
            CompositedTransformFollower(
              link: _layerLink,
              showWhenUnlinked: false,
              offset: Offset(
                0,
                showAbove ? -(overlayHeight + 4) : size.height + 4,
              ),
              child: Material(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: overlayHeight,
                    maxWidth: widget.width ?? size.width,
                  ),
                  child: Container(
                    width: widget.width ?? size.width,
                    margin: const EdgeInsets.only(top: 3),
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
                    child: ScrollbarTheme(
                      data: ScrollbarTheme.of(context).copyWith(
                        mainAxisMargin: 0,
                        crossAxisMargin: 0,
                        radius: Radius.circular(context.dsRadius.rd300),
                        thickness: WidgetStateProperty.all(
                          context.dsSpacing.sp100,
                        ),
                      ),
                      child: Scrollbar(
                        controller: _scrollController,
                        thumbVisibility: true,
                        thickness: context.dsSpacing.sp100,
                        radius: Radius.circular(context.dsRadius.rd300),
                        child: ListView.builder(
                          controller: _scrollController,
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: _filteredOptions.length,
                          itemBuilder: (context, index) {
                            final option = _filteredOptions[index];
                            return ListTile(
                              title: DSText(
                                text: widget.getLabel(option),
                                textStyle: DSTextStyleType.primaryBodySRegular,
                                textColor: context.dsColors.textNeutralOnWhite,
                              ),
                              onTap: () {
                                // Selecting an option:
                                // - update controller text
                                // - notify parent
                                // - close keyboard & overlay
                                widget.textEditingController.text = widget
                                    .getLabel(option);
                                widget.onChanged(option);
                                _focusNode.unfocus();
                                _closeOverlay();
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _onChanged(String value) {
    if (widget.state == DSTextInputState.error) return;

    setState(() {
      if (value.isEmpty) {
        _filteredOptions = widget.items;
      } else {
        _filteredOptions =
            widget.items
                .where(
                  (item) => widget
                      .getLabel(item)
                      .toLowerCase()
                      .contains(value.toLowerCase()),
                )
                .toList();
      }
    });

    // If there are no options, close overlay.
    if (_filteredOptions.isEmpty) {
      _closeOverlay();
      return;
    }

    // If there ARE options:
    if (_overlayEntry == null) {
      // Only open if field is focused
      if (_focusNode.hasFocus) {
        _openOverlay();
      }
    } else {
      _overlayEntry!.markNeedsBuild();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _focusNode.dispose();
    _closeOverlay();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: SizedBox(
        width: widget.width ?? double.infinity,
        child: DSTextInput(
          key: _textFieldKey,
          controller: widget.textEditingController,
          focusNode: _focusNode,
          hintText: widget.hintText,
          onChanged: _onChanged,
          caption: widget.caption,
          size: DSTextInputSize.large,
          state: widget.state ?? DSTextInputState.defaultState,
          leadingIconPath: widget.leadingIconPath,
          trailingIconPath: widget.trailingIconPath,
          enabled: widget.enabled,
        ),
      ),
    );
  }
}
