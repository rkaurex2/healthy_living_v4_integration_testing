import 'dart:math';

import 'package:healthy_living_shared/healthy_living_shared.dart';

extension EmailValidatorExtension on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegExp.hasMatch(this);
  }
}

extension Validate on String? {
  bool get isValidValue {
    return this != null && this!.isNotEmpty;
  }
}

extension TitleCaseExtension on String {
  String toTitleCase() {
    if (isEmpty) return this;

    return trim()
        .split(RegExp(r'\s+'))
        .map(
          (word) =>
              word.isEmpty
                  ? ''
                  : '${word[0].toUpperCase()}${word.substring(1)}',
        )
        .join(' ');
  }
}

extension SmartTitleCaseExtension on String {
  String toSmartTitleCase() {
    if (isEmpty) return this;

    // Use RegExp to split by any whitespace and filter out empty strings
    final splitText = trim().split(RegExp(r'\s+'));

    return splitText
        .where((word) => word.isNotEmpty)
        .map((word) {
          if (word.isEmpty) return word;

          if (word.startsWith('(') && word.length > 1) {
            return '${word[0]}${word[1].toUpperCase()}${word.substring(2).toLowerCase()}';
          } else {
            return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
          }
        })
        .join(' ');
  }
}

extension SmartTitlePrepositionCaseExtension on String {
  String toSmartTitlePrepositionCase() {
    if (isEmpty) return this;

    final Set<String> lowercaseWords = {
      'a',
      'an',
      'and',
      'as',
      'at',
      'but',
      'by',
      'for',
      'from',
      'in',
      'into',
      'is',
      'nor',
      'of',
      'on',
      'onto',
      'or',
      'the',
      'to',
      'up',
      'with',
      'yet',
    };

    final splitText = trim().split(' ');
    return splitText
        .asMap()
        .entries
        .map((entry) {
          int index = entry.key;
          String word = entry.value;

          if (word.isEmpty) return word;

          String processedWord;

          if (word.startsWith('(') && word.length > 1) {
            String innerWord = word.substring(1);
            String baseWord =
                innerWord.replaceAll(RegExp(r'[^\w]'), '').toLowerCase();

            if (index == 0 ||
                index == splitText.length - 1 ||
                !lowercaseWords.contains(baseWord)) {
              processedWord =
                  '${word[0]}${word[1].toUpperCase()}${word.substring(2).toLowerCase()}';
            } else {
              processedWord = word.toLowerCase();
            }
          } else {
            String baseWord =
                word.replaceAll(RegExp(r'[^\w]'), '').toLowerCase();

            if (index == 0 ||
                index == splitText.length - 1 ||
                !lowercaseWords.contains(baseWord)) {
              processedWord =
                  '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
            } else {
              processedWord = word.toLowerCase();
            }
          }

          return processedWord;
        })
        .join(' ');
  }

  String toSentenceCase() {
    if (isEmpty) return this;

    // Handle strings with only whitespace
    if (trim().isEmpty) return this;

    // Find the first non-whitespace character
    int firstCharIndex = 0;
    while (firstCharIndex < length && this[firstCharIndex].trim().isEmpty) {
      firstCharIndex++;
    }

    if (firstCharIndex >= length) return this;

    String result =
        substring(0, firstCharIndex) + // Leading whitespace
        this[firstCharIndex].toUpperCase() + // First character uppercase
        substring(firstCharIndex + 1).toLowerCase(); // Rest lowercase

    return result;
  }
}

extension HTMLTagTextExtractor on String {
  /// Extracts text content from HTML tags
  /// Returns a List[String] containing all the text found inside em tags
  List<String> extractTagText({String tag = StringConstants.emphasisTag}) {
    // Regular expression to match <em>content</em> and capture the content
    final regex = RegExp('<$tag>(.*?)</$tag>', caseSensitive: false);
    // Find all matches and extract the captured groups
    final matches = regex.allMatches(this);
    // Convert matches to list of strings, extracting group 1 (the content)
    return matches.map((match) => match.group(1) ?? '').toList();
  }
}

extension RandomAlphaNum on String {
  String appendRandomAlphaNum([int length = 6]) {
    const chars =
        'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final rand = Random();

    final randomStr = List.generate(
      length,
          (index) => chars[rand.nextInt(chars.length)],
    ).join();

    return '$this$randomStr';
  }
}
