import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/src/utils/measure_util.dart';
import 'package:popover/popover.dart';

class PopoverUtil {
  void showPopUp({
    required Widget widget,
    required BuildContext context,
    double width = 320,
    double height = 0,
    Color bgColor = DSSemanticColors.iconPrimary,
    double arrowDxOffset = 0,
    bool showArrow = true,
  }) {
    if (height == 0) {
      final Size size = MeasureUtil.measureWidget(widget);
      debugPrint("Size width = ${size.width} height = ${size.height}");
      height = size.height;
      if (width == 0) {
        width = size.width;
      }
    }

    showPopover(
      context: context,
      bodyBuilder: (context) => widget,
      backgroundColor: bgColor,
      barrierColor: Colors.transparent,
      width: width,
      transition: PopoverTransition.scale,
      height: height,
      shadow: [
        const BoxShadow(
          color: Color(0x1F000000),
          blurRadius: 10,
          spreadRadius: 1,
          blurStyle: BlurStyle.normal,
        ),
      ],
      contentDyOffset: showArrow ? 0 : 5,
      arrowHeight: showArrow ? 8 : 0,
      arrowWidth: showArrow ? 16 : 0,
      arrowDxOffset: arrowDxOffset,
    );
  }
}
