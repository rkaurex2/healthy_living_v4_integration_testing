import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/widgets/tool_tip_widget.dart';

class TooltipOverlay {
  static bool _isShowing = false;
  static OverlayEntry? _overlayEntry;

  static void show(
    BuildContext context, {
    required GlobalKey targetKey,
    required String message,
    Duration duration = const Duration(seconds: 3),
    double verticalOffset = 8,
  }) {
    if (_isShowing) return;
    final overlay = Overlay.of(context);

    final renderBox =
        targetKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final targetPosition = renderBox.localToGlobal(Offset.zero);
    final targetSize = renderBox.size;

    // Tooltip width and height estimate
    const tooltipWidth = 200.0;
    const tooltipHeight = 48.0;

    // Calculate position (auto adjust if near top)
    final isEnoughSpaceAbove = targetPosition.dy > tooltipHeight + 20;
    final tooltipTop =
        isEnoughSpaceAbove
            ? targetPosition.dy - tooltipHeight - verticalOffset
            : targetPosition.dy + targetSize.height + verticalOffset;

    final arrowUp = !isEnoughSpaceAbove;

    _overlayEntry = OverlayEntry(
      builder:
          (context) => Positioned(
            left: targetPosition.dx + targetSize.width / 1 - tooltipWidth / 1,
            top: tooltipTop,
            child: ToolTipWidget(message: message, arrowUp: arrowUp),
          ),
    );
    _isShowing = true;
    overlay.insert(_overlayEntry!);

    // Remove automatically
    Future.delayed(duration, () {
      if (_overlayEntry != null) {
        _isShowing = false;
        _overlayEntry!.remove();
        _overlayEntry = null;
      }
    });
  }

  static void dismiss() {
    if (_isShowing && _overlayEntry != null) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      _isShowing = false;
    }
  }
}
