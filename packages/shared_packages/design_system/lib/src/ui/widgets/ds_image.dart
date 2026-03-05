import 'dart:io';
import 'dart:typed_data';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DSImage extends StatelessWidget {
  final String path;
  final Uint8List? uint8list;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Color? color;
  final Widget? errorWidget;

  //loadingBuilder and placeholderBuilder use same widget
  final Widget? placeholder;
  final DSImageType _type;
  final Widget Function(BuildContext, Widget, int?, bool)? frameBuilder;
  final Widget Function(BuildContext, Object, StackTrace?)? errorBuilder;

  const DSImage._internal({
    required this.path,
    required DSImageType type,
    this.width,
    this.uint8list,
    this.height,
    this.fit = BoxFit.fill,
    this.color,
    this.errorWidget,
    this.placeholder,
    this.frameBuilder,
    this.errorBuilder,
    super.key,
  }) : _type = type;

  factory DSImage.asset(
    String path, {
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
    Widget? errorWidget,
    Widget? placeholder,
  }) {
    return DSImage._internal(
      path: path,
      type: DSImageType.asset,
      width: width,
      height: height,
      fit: fit,
      color: color,
      errorWidget: errorWidget,
      placeholder: placeholder,
      key: key,
    );
  }

  factory DSImage.network(
    String path, {
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
    Widget? errorWidget,
    Widget? placeholder,
    Widget Function(BuildContext, Widget, int?, bool)? frameBuilder,
    Widget Function(BuildContext, Object, StackTrace?)? errorBuilder,
  }) {
    return DSImage._internal(
      path: path,
      type: DSImageType.network,
      width: width,
      height: height,
      fit: fit,
      color: color,
      errorWidget: errorWidget,
      placeholder: placeholder,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      key: key,
    );
  }

  factory DSImage.file(
    String path, {
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
    Widget? errorWidget,
    Widget? placeholder,
  }) {
    return DSImage._internal(
      path: path,
      type: DSImageType.file,
      width: width,
      height: height,
      fit: fit,
      color: color,
      errorWidget: errorWidget,
      placeholder: placeholder,
      key: key,
    );
  }

  factory DSImage.memory({
    required Uint8List uint8list,
    Key? key,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    Color? color,
    Widget? errorWidget,
    Widget? placeholder,
  }) {
    return DSImage._internal(
      path: "",
      uint8list: uint8list,
      type: DSImageType.memory,
      width: width,
      height: height,
      fit: fit,
      color: color,
      errorWidget: errorWidget,
      placeholder: placeholder,
      key: key,
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case DSImageType.network:
        return DesignSystemUtil().isSvgImage(path: path)
            ? SvgPicture.network(
              path,
              width: width,
              height: height,
              fit: fit,
              colorFilter:
                  color != null
                      ? ColorFilter.mode(color!, BlendMode.srcIn)
                      : null,
              placeholderBuilder:
                  placeholder != null ? (_) => placeholder! : null,
              errorBuilder:
                  errorWidget != null ? (_, __, ___) => errorWidget! : null,
            )
            : Image.network(
              path,
              key: key,
              width: width,
              height: height,
              fit: fit,
              color: color,
              cacheWidth:
                  width != null
                      ? (width! * MediaQuery.devicePixelRatioOf(context))
                          .round()
                      : null,
              cacheHeight:
                  height != null
                      ? (height! * MediaQuery.devicePixelRatioOf(context))
                          .round()
                      : null,
              filterQuality: FilterQuality.low,
              gaplessPlayback: false,
              frameBuilder:
                  frameBuilder != null
                      ? frameBuilder!
                      : (context, child, frame, wasSynchronouslyLoaded) {
                        if (wasSynchronouslyLoaded) return child;

                        final ph = placeholder ?? const SizedBox.shrink();
                        final showImage = frame != null;
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 150),
                          switchInCurve: Curves.easeOut,
                          switchOutCurve: Curves.easeIn,
                          layoutBuilder:
                              (currentChild, previousChildren) => Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  // keep placeholder underneath during the cross-fade
                                  if (!showImage) ph,
                                  ...previousChildren,
                                  if (currentChild != null) currentChild,
                                ],
                              ),
                          child:
                              showImage
                                  ? child
                                  : SizedBox(
                                    key: const ValueKey('ph'),
                                    width: width,
                                    height: height,
                                    child: ph,
                                  ),
                        );
                      },
              errorBuilder: (context, error, stackTrace) {
                if (errorBuilder != null) {
                  return errorBuilder!(context, error, stackTrace);
                } else if (errorWidget != null) {
                  return errorWidget!;
                } else {
                  return const SizedBox.shrink();
                }
              },
            );
      case DSImageType.file:
        final dynamic file = File(path);
        return DesignSystemUtil().isSvgImage(path: path)
            ? SvgPicture.file(
              file,
              width: width,
              height: height,
              fit: BoxFit.contain,
              colorFilter:
                  color != null
                      ? ColorFilter.mode(color!, BlendMode.srcIn)
                      : null,
              placeholderBuilder:
                  placeholder != null ? (_) => placeholder! : null,
              errorBuilder:
                  errorWidget != null ? (_, __, ___) => errorWidget! : null,
            )
            : Image.file(
              file,
              width: width,
              height: height,
              fit: fit,
              color: color,
              errorBuilder:
                  errorWidget != null ? (_, __, ___) => errorWidget! : null,
            );
      case DSImageType.asset:
        return DesignSystemUtil().isSvgImage(path: path)
            ? SvgPicture.asset(
              path,
              width: width,
              height: height,
              fit: fit,
              colorFilter:
                  color != null
                      ? ColorFilter.mode(color!, BlendMode.srcIn)
                      : null,
              placeholderBuilder:
                  placeholder != null ? (_) => placeholder! : null,
              errorBuilder:
                  errorWidget != null ? (_, __, ___) => errorWidget! : null,
            )
            : Image.asset(
              path,
              width: width,
              height: height,
              fit: fit,
              color: color,
              errorBuilder:
                  errorWidget != null ? (_, __, ___) => errorWidget! : null,
            );
      case DSImageType.memory:
        return Image.memory(
          uint8list!,
          width: width,
          height: height,
          fit: fit,
          errorBuilder:
              errorWidget != null ? (_, __, ___) => errorWidget! : null,
        );
    }
  }
}
