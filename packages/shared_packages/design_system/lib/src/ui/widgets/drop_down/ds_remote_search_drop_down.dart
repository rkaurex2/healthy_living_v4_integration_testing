import 'package:design_system/design_system.dart';
import 'package:design_system/src/ui/widgets/drop_down/ds_drop_down_shimmer.dart';
import 'package:flutter/material.dart';

class DSRemoteSearchDropdown<T> extends StatefulWidget {
  final String Function(T) getLabel;
  final List<T> items;
  final void Function(T) onChanged;
  final void Function(String)? onSearchChanged;
  final String hintText;
  final String? errorText;
  final String? caption;
  final double? width;
  final bool enabled;
  final DSDropDownRemoteState dsDropDownRemoteState;
  final TextEditingController textEditingController;
  final String? leadingIconPath;
  final String? trailingIconPath;
  final DSTextInputState? state;

  const DSRemoteSearchDropdown({
    required this.getLabel,
    required this.items,
    required this.onChanged,
    required this.hintText,
    required this.dsDropDownRemoteState,
    required this.textEditingController,
    this.onSearchChanged,
    this.width,
    this.caption,
    this.enabled = true,
    this.leadingIconPath,
    this.errorText,
    this.trailingIconPath,
    this.state,
    super.key,
  });

  @override
  State<DSRemoteSearchDropdown<T>> createState() =>
      _DSRemoteSearchDropdownState<T>();
}

class _DSRemoteSearchDropdownState<T> extends State<DSRemoteSearchDropdown<T>> {
  final LayerLink _layerLink = LayerLink();
  final FocusNode _focusNode = FocusNode();
  final GlobalKey _textFieldKey = GlobalKey();
  OverlayEntry? _overlayEntry;

  void _openOverlay() {
    _overlayEntry = _createOverlayEntry();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _closeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _updateOverlay() {
    if (_overlayEntry == null) {
      _openOverlay();
    } else {
      _overlayEntry!.markNeedsBuild();
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox =
        _textFieldKey.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    final screenHeight = MediaQuery.of(context).size.height;
    final spaceBelow = screenHeight - offset.dy - size.height;
    final showAbove = spaceBelow < 200;

    return OverlayEntry(
      builder:
          (context) => Stack(
            children: [
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _closeOverlay();
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.transparent, // Must be non-null to receive taps
                ),
              ),
              Positioned(
                width: widget.width ?? size.width,
                left: offset.dx,
                top: showAbove ? offset.dy - 200 : offset.dy + size.height,
                height: 200,
                child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: Offset(0, showAbove ? -200 : size.height),
                  child: Material(
                    child: Container(
                      margin: EdgeInsets.only(top: 3),
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
                            offset: Offset(0, 2),
                            blurRadius: 6,
                            spreadRadius: context.dsRadius.rd100,
                          ),
                        ],
                      ),
                      child:
                          widget.dsDropDownRemoteState ==
                                  DSDropDownRemoteState.loading
                              ? Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment:
                                      showAbove
                                          ? MainAxisAlignment.end
                                          : MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 50,
                                      child: DropdownShimmer(),
                                    ),
                                  ],
                                ),
                              )
                              : widget.dsDropDownRemoteState ==
                                      DSDropDownRemoteState.error ||
                                  widget.items.isEmpty
                              ? Center(
                                child: Builder(
                                  builder: (innerContext) {
                                    return Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: DSText(
                                        text: widget.errorText ?? "",
                                        textStyle:
                                            DSTextStyleType.primaryBodySRegular,
                                        textColor:
                                            context.dsColors.textNeutralOnWhite,
                                      ),
                                    );
                                  },
                                ),
                              )
                              : Scrollbar(
                                thumbVisibility: true,
                                thickness: context.dsSpacing.sp100,
                                radius: Radius.circular(context.dsRadius.rd300),
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  itemCount: widget.items.length,
                                  itemBuilder: (context, index) {
                                    final option = widget.items[index];
                                    return ListTile(
                                      title: DSText(
                                        text: widget.getLabel(option),
                                        textStyle:
                                            DSTextStyleType.primaryBodySRegular,
                                        textColor:
                                            context.dsColors.textNeutralOnWhite,
                                      ),
                                      onTap: () {
                                        widget.onChanged(option);
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
            ],
          ),
    );
  }

  @override
  void dispose() {
    widget.textEditingController.dispose();
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
          caption: widget.caption,
          onChanged: (value) {
            if (widget.state != DSTextInputState.error) {
              if (value.isEmpty) {
                _closeOverlay();
                return;
              }
              if (_focusNode.hasFocus) {
                _updateOverlay();
              }
              widget.onSearchChanged?.call(value);
            }
          },
          size: DSTextInputSize.large,
          state: widget.state ?? DSTextInputState.defaultState,
          enabled: widget.enabled,
          leadingIconPath: widget.leadingIconPath,
          trailingIconPath: widget.trailingIconPath,
        ),
      ),
    );
  }
}
