import 'package:design_system/src/shared/ds_text_style_type.dart';
import 'package:flutter/material.dart';

class DSText extends StatelessWidget {
  final String? text;
  final InlineSpan? textSpan;
  final DSTextStyleType textStyle;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final Color textColor;
  final double? lineHeight;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final FontWeight? fontWeight;
  final TextScaler? textScaler;

  const DSText({
    required this.text,
    required this.textStyle,
    required this.textColor,
    super.key,
    this.textSpan,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.lineHeight,
    this.decoration,
    this.decorationColor,
    this.fontWeight,
    this.textScaler,
  });

  const DSText.rich({
    required this.textSpan,
    required this.textStyle,
    required this.textColor,
    super.key,
    this.text,
    this.maxLines,
    this.overflow,
    this.textAlign,
    this.lineHeight,
    this.decoration,
    this.decorationColor,
    this.fontWeight,
    this.textScaler,
  });

  @override
  Widget build(BuildContext context) {
    if (textSpan != null) {
      return Text.rich(
        key: key,
        textSpan!,
        textAlign: textAlign,
        style: textStyle.getTextStyle().copyWith(
          color: textColor,
          height: lineHeight,
          fontWeight: fontWeight,
        ),
        maxLines: maxLines,
        overflow: overflow,
      );
    } else {
      return text != null && text?.isNotEmpty == true
          ? Text(
            key: key,
            text!,
            textAlign: textAlign,
            style: textStyle.getTextStyle().copyWith(
              color: textColor,
              height: lineHeight,
              decoration: decoration,
              decorationColor: decorationColor,
              fontWeight: fontWeight,
            ),
            maxLines: maxLines,
            overflow: overflow,
            textScaler: textScaler,
          )
          : const SizedBox.shrink();
    }
  }
}
