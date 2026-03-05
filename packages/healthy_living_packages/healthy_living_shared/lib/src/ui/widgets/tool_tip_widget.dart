import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
  final String message;
  final bool arrowUp;

  const ToolTipWidget({
    required this.message,
    required this.arrowUp,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: 200),
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp300,
              vertical: context.dsSpacing.sp200,
            ),
            decoration: BoxDecoration(
              color: context.dsColors.surfacePrimaryOpacity,
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            child: DSText(
              text: message,
              textAlign: TextAlign.center,
              textStyle: DSTextStyleType.primaryButtonSRegular,
              textColor: context.dsColors.textOnSurfaceDefault,
            ),
          ),
          Positioned(
            right: 10,
            bottom: -6,
            child: CustomPaint(
              size: const Size(12, 6),
              painter: _TrianglePainter(
                color: context.dsColors.surfacePrimaryOpacity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrianglePainter extends CustomPainter {
  final Color color;

  _TrianglePainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    final path =
        Path()
          ..moveTo(0, 0)
          ..lineTo(size.width / 2, size.height)
          ..lineTo(size.width, 0)
          ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
