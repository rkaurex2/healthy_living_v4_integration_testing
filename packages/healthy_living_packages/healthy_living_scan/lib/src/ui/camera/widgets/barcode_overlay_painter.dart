import 'package:flutter/material.dart';
class BarcodeOverlayPainter extends CustomPainter {
  BarcodeOverlayPainter({
    required this.holeRect,
    required this.progress,
    required this.isTaskCompleted,
    this.overlayOpacity = 0.0,
  });

  final Rect holeRect;
  final double progress;
  final bool isTaskCompleted;
  final double overlayOpacity;

  @override
  void paint(Canvas canvas, Size size) {
    // dark overlay
    final overlayPaint =
    Paint()..color = Colors.white.withValues(alpha: overlayOpacity);
    final fullRect = Offset.zero & size;

    canvas.saveLayer(fullRect, Paint());
    canvas.drawRect(fullRect, overlayPaint);

    // transparent cutout
    final clearPaint = Paint()..blendMode = BlendMode.clear;
    canvas.drawRRect(
      RRect.fromRectAndRadius(holeRect, const Radius.circular(4)),
      clearPaint,
    );
    canvas.restore();

    // Paint for border corners
    final cornerPaint =
    Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    const cornerLength = 32.0;
    const cornerRadius = 8.0;

    final path = Path();

    // top-left corner
    path.moveTo(holeRect.left, holeRect.top + cornerLength);
    path.lineTo(holeRect.left, holeRect.top + cornerRadius);
    path.arcToPoint(
      Offset(holeRect.left + cornerRadius, holeRect.top),
      radius: const Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(holeRect.left + cornerLength, holeRect.top);

    // top-right corner
    path.moveTo(holeRect.right - cornerLength, holeRect.top);
    path.lineTo(holeRect.right - cornerRadius, holeRect.top);
    path.arcToPoint(
      Offset(holeRect.right, holeRect.top + cornerRadius),
      radius: const Radius.circular(cornerRadius),
      clockwise: true,
    );
    path.lineTo(holeRect.right, holeRect.top + cornerLength);

    // bottom-left corner
    path.moveTo(holeRect.left, holeRect.bottom - cornerLength);
    path.lineTo(holeRect.left, holeRect.bottom - cornerRadius);
    path.arcToPoint(
      Offset(holeRect.left + cornerRadius, holeRect.bottom),
      radius: const Radius.circular(cornerRadius),
      clockwise: false,
    );
    path.lineTo(holeRect.left + cornerLength, holeRect.bottom);

    // bottom-right corner
    path.moveTo(holeRect.right - cornerLength, holeRect.bottom);
    path.lineTo(holeRect.right - cornerRadius, holeRect.bottom);
    path.arcToPoint(
      Offset(holeRect.right, holeRect.bottom - cornerRadius),
      radius: const Radius.circular(cornerRadius),
      clockwise: false,
    );
    path.lineTo(holeRect.right, holeRect.bottom - cornerLength);

    // draw all corners
    canvas.drawPath(path, cornerPaint);

    if (isTaskCompleted) {
      // Green border + light green fill
      final fillPaint = Paint()..color = Color(0xFF7AD2A7).withValues(alpha: 0.0);
      final borderPaint =
      Paint()
        ..color = Color(0xFF7AD2A7)
        ..strokeWidth = 2
        ..style = PaintingStyle.stroke;

      canvas.drawRRect(
        RRect.fromRectAndRadius(holeRect, const Radius.circular(8)),
        fillPaint,
      );

      canvas.drawRRect(
        RRect.fromRectAndRadius(holeRect, const Radius.circular(8)),
        borderPaint,
      );
    } else {
      // ===== Central Line =====
      final centerLinePaint =
      Paint()
        ..color = Colors.white
        ..strokeWidth = 4;

      final centerY =
          holeRect.top +
              cornerLength +
              progress * (holeRect.height - 2 * cornerLength);
      canvas.drawLine(
        Offset(holeRect.left - 22, centerY),
        Offset(holeRect.right + 22, centerY),
        centerLinePaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}