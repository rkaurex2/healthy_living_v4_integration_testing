import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class DSBottomSheetWidget {
  static Future<T?> showBottomSheet<T>({
    required BuildContext context,
    required Widget child,
    bool isScrollControlled = false,
    bool isDismissible = true,
    bool enableDrag = false,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool isFullScreen = false,
    double? borderRadius,
    double? height,
    EdgeInsetsGeometry? padding,
    bool useRootNavigator = true,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled || isFullScreen,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor:
          backgroundColor ?? context.dsColors.surfaceNeutralContainerWhite,
      elevation: elevation,
      barrierColor: barrierColor,
      clipBehavior: clipBehavior,
      constraints: constraints,
      useRootNavigator: useRootNavigator,
      shape:
          shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(borderRadius ?? context.dsRadius.rd500),
            ),
          ),
      builder: (context) {
        Widget content = child;

        // Add padding if specified
        if (padding != null) {
          content = Padding(padding: padding, child: content);
        }

        return ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: height ?? MediaQuery.of(context).size.height * 0.9,
          ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: content,
          ),
        );
      },
    );
  }

  static Future<T?> showBottomSheetWithFullScreenSupport<T>({
    required BuildContext context,
    required Widget child,
    bool isScrollControlled = true,
    bool isDismissible = false,
    bool enableDrag = false,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    double? borderRadius,
    EdgeInsetsGeometry? padding,
    bool useRootNavigator = true,
    bool fitToChildHeight = false,
  }) {
    return showModalBottomSheet<T>(
      context: context,
      isScrollControlled: isScrollControlled,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      backgroundColor:
          backgroundColor ?? context.dsColors.surfaceNeutralContainerWhite,
      elevation: elevation,
      barrierColor: barrierColor,
      clipBehavior: clipBehavior,
      constraints: constraints,
      useRootNavigator: useRootNavigator,
      useSafeArea: true,
      shape:
          shape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(borderRadius ?? context.dsRadius.rd500),
            ),
          ),
      builder: (context) {
        Widget content = child;

        // Add padding if specified
        if (padding != null) {
          content = Padding(padding: padding, child: content);
        }

        if (fitToChildHeight) {
          return content;
        } else {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.9,
            child: content,
          );
        }
      },
    );
  }
}
