import 'package:flutter/material.dart';
import 'package:substring_highlight/substring_highlight.dart';

class SubstringHighlightWidget extends StatelessWidget {
  final TextStyle textStyle;
  final TextStyle highlightTextStyle;
  final String text;
  final String? highlightText;
  final List<String>? highlightTexts;
  final TextOverflow? overflow;
  final int? maxLines;

  const SubstringHighlightWidget({
    required this.textStyle,
    required this.highlightTextStyle,
    required this.text,
    super.key,
    this.highlightText,
    this.highlightTexts,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return !(highlightTexts != null)
        ? SubstringHighlight(
          textStyle: textStyle,
          overflow: overflow ?? TextOverflow.clip,
          text: text,
          term: highlightText ?? "",
          textStyleHighlight: highlightTextStyle,
          maxLines: maxLines,
        )
        : SubstringHighlight(
          textStyle: textStyle,
          overflow: overflow ?? TextOverflow.clip,
          text: text,
          terms: highlightTexts,
          textStyleHighlight: highlightTextStyle,
          maxLines: maxLines,
        );
  }
}
