import 'package:flutter/material.dart';

import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_overlay_painter.dart';

class BarcodeOverlayView extends StatefulWidget {
  const BarcodeOverlayView({required this.isTaskCompleted, super.key});

  final bool isTaskCompleted;

  @override
  State<BarcodeOverlayView> createState() => _BarcodeOverlayState();
}

class _BarcodeOverlayState extends State<BarcodeOverlayView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _lineAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _lineAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void didUpdateWidget(covariant BarcodeOverlayView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isTaskCompleted && !oldWidget.isTaskCompleted) {
      _controller.stop();
    } else if (!widget.isTaskCompleted && oldWidget.isTaskCompleted) {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final overlayWidth = constraints.maxWidth * 0.8;
        final overlayHeight = overlayWidth * 0.7;
        final center = Offset(
          constraints.maxWidth / 2,
          constraints.maxHeight / 2 - 30,
        );

        final holeRect = Rect.fromCenter(
          center: center,
          width: overlayWidth,
          height: overlayHeight,
        );

        return AnimatedBuilder(
          animation: _lineAnimation,
          builder: (context, child) {
            return CustomPaint(
              size: Size(constraints.maxWidth, constraints.maxHeight),
              painter: BarcodeOverlayPainter(
                holeRect: holeRect,
                progress: _lineAnimation.value,
                isTaskCompleted: widget.isTaskCompleted,
              ),
            );
          },
        );
      },
    );
  }
}
