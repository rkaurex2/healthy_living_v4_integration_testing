import 'package:flutter/material.dart';

class SearchResultHighlightTextWidget extends StatelessWidget {
  const SearchResultHighlightTextWidget({
    required this.text,
    super.key,
    this.textStyle = const TextStyle(color: Colors.black),
    this.textStyleHighlight = const TextStyle(
      color: Color(0xFFFF5500),
      fontWeight: FontWeight.bold,
    ),
    this.maxLines,
    this.overflow = TextOverflow.clip,
    this.textAlign = TextAlign.left,
  });

  /// The input text that may contain <em>...</em> tags.
  final String text;

  /// Style for normal text (non-highlighted).
  final TextStyle textStyle;

  /// Style for highlighted text (inside <em> tags).
  final TextStyle textStyleHighlight;

  /// Max number of lines.
  final int? maxLines;

  /// Overflow handling.
  final TextOverflow overflow;

  /// Text alignment.
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    final RegExp exp = RegExp(r'<em>(.*?)<\/em>', caseSensitive: false);
    final List<TextSpan> spans = [];

    int start = 0;

    for (final match in exp.allMatches(text)) {
      if (match.start > start) {
        spans.add(
          TextSpan(text: text.substring(start, match.start), style: textStyle),
        );
      }

      spans.add(
        TextSpan(
          text: match.group(1), // text inside <em>
          style: textStyleHighlight,
        ),
      );

      start = match.end;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start), style: textStyle));
    }

    return RichText(
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      text: TextSpan(children: spans, style: textStyle),
      textScaler: MediaQuery.textScalerOf(context),
    );
  }
}
