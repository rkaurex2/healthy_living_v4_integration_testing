import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/ui/widgets/tool_tip_card.dart';

class InfoTooltipOverlay {
  static OverlayEntry? _entry;
  static bool _showing = false;

  static void show(
    BuildContext context, {
    required GlobalKey targetKey,
    required String title,
    required String message,
  }) {
    if (_showing) return;
    final overlay = Overlay.of(context);
    final renderBox =
        targetKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    final targetPos = renderBox.localToGlobal(Offset.zero);
    final targetSize = renderBox.size;

    final screenWidth = MediaQuery.of(context).size.width;

    final top = targetPos.dy + targetSize.height + 8;

    _entry = OverlayEntry(
      builder: (context) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  dismiss();
                },
              ),
            ),

            // TOOLTIP
            Positioned(
              top: top,
              left: 0,
              width: screenWidth,
              child: ToolTipCard(
                title: title,
                message: message,
                onClose: dismiss,
              ),
            ),
          ],
        );
      },
    );

    overlay.insert(_entry!);
    _showing = true;
  }

  static void dismiss() {
    if (_showing && _entry != null) {
      _entry?.remove();
      _entry = null;
      _showing = false;
    }
  }
}
