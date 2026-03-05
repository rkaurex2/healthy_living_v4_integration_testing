import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ToolTipCard extends StatelessWidget {
  final String title;
  final String message;
  final VoidCallback onClose;

  const ToolTipCard({
    required this.message,
    required this.onClose,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(context.dsRadius.rd200),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: context.dsRadius.rd100,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DSText(
                      text: title,
                      textStyle: DSTextStyleType.primaryBodySMedium,
                      textColor: context.dsColors.textNeutralSecondary,
                    ),
                    GestureDetector(
                      onTap: onClose,
                      child: const Icon(Icons.close, size: 20),
                    ),
                  ],
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),

                DSText(
                  text: message,
                  textStyle: DSTextStyleType.primaryButtonSRegular,
                  textColor: context.dsColors.textNeutralSecondary,
                ),
              ],
            ),
          ),

          // Arrow
          Positioned(
            left: 40,
            top: -8,
            child: CustomPaint(
              size: const Size(20, 12),
              painter: _ArrowPainter(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class _ArrowPainter extends CustomPainter {
  final Color color;

  _ArrowPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;

    final path =
        Path()
          ..moveTo(0, size.height)
          ..lineTo(size.width / 2, 0)
          ..lineTo(size.width, size.height)
          ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(_) => false;
}
