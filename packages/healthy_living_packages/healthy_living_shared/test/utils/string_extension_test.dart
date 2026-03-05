import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/utils/string_extension.dart';

void main() {
  group('EmailValidatorExtension', () {
    group('isValidEmail', () {
      test('returns true for a standard valid email', () {
        expect('user@example.com'.isValidEmail, isTrue);
      });

      test('returns true for email with dots in local part', () {
        expect('first.last@example.com'.isValidEmail, isTrue);
      });

      test('returns true for email with plus sign in local part', () {
        expect('user+tag@example.com'.isValidEmail, isTrue);
      });

      test('returns true for email with underscores', () {
        expect('user_name@example.com'.isValidEmail, isTrue);
      });

      test('returns true for email with hyphens in domain', () {
        expect('user@my-domain.com'.isValidEmail, isTrue);
      });

      test('returns true for email with subdomain', () {
        expect('user@mail.example.com'.isValidEmail, isTrue);
      });

      test('returns true for email with percent in local part', () {
        expect('user%tag@example.com'.isValidEmail, isTrue);
      });

      test('returns true for email with numbers in local part', () {
        expect('user123@example.com'.isValidEmail, isTrue);
      });

      test('returns false for empty string', () {
        expect(''.isValidEmail, isFalse);
      });

      test('returns false for string without @ sign', () {
        expect('userexample.com'.isValidEmail, isFalse);
      });

      test('returns false for string without domain', () {
        expect('user@'.isValidEmail, isFalse);
      });

      test('returns false for string without local part', () {
        expect('@example.com'.isValidEmail, isFalse);
      });

      test('returns false for string without TLD', () {
        expect('user@example'.isValidEmail, isFalse);
      });

      test('returns false for string with spaces', () {
        expect('user @example.com'.isValidEmail, isFalse);
      });

      test('returns false for string with double @ signs', () {
        expect('user@@example.com'.isValidEmail, isFalse);
      });

      test('returns false for string with single char TLD', () {
        expect('user@example.c'.isValidEmail, isFalse);
      });

      test('returns true for email with two-char TLD', () {
        expect('user@example.co'.isValidEmail, isTrue);
      });

      test('returns false for just text', () {
        expect('notanemail'.isValidEmail, isFalse);
      });
    });
  });

  group('Validate', () {
    group('isValidValue', () {
      test('returns false for null', () {
        const String? nullString = null;
        expect(nullString.isValidValue, isFalse);
      });

      test('returns false for empty string', () {
        expect(''.isValidValue, isFalse);
      });

      test('returns true for non-empty string', () {
        expect('hello'.isValidValue, isTrue);
      });

      test('returns true for whitespace-only string', () {
        // isNotEmpty returns true for whitespace strings
        expect(' '.isValidValue, isTrue);
      });

      test('returns true for single character', () {
        expect('a'.isValidValue, isTrue);
      });
    });
  });

  group('TitleCaseExtension', () {
    group('toTitleCase', () {
      test('returns empty string for empty input', () {
        expect(''.toTitleCase(), equals(''));
      });

      test('capitalizes a single word', () {
        expect('hello'.toTitleCase(), equals('Hello'));
      });

      test('capitalizes multiple words', () {
        expect('hello world'.toTitleCase(), equals('Hello World'));
      });

      test('handles already capitalized string', () {
        expect('Hello World'.toTitleCase(), equals('Hello World'));
      });

      test('handles all-uppercase string', () {
        expect('HELLO WORLD'.toTitleCase(), equals('HELLO WORLD'));
      });

      test('handles single character', () {
        expect('a'.toTitleCase(), equals('A'));
      });

      test('trims leading and trailing whitespace', () {
        expect('  hello world  '.toTitleCase(), equals('Hello World'));
      });

      test('handles multiple spaces between words', () {
        expect('hello   world'.toTitleCase(), equals('Hello World'));
      });
    });
  });

  group('SmartTitleCaseExtension', () {
    group('toSmartTitleCase', () {
      test('returns empty string for empty input', () {
        expect(''.toSmartTitleCase(), equals(''));
      });

      test('capitalizes first letter and lowercases rest of each word', () {
        expect('hello world'.toSmartTitleCase(), equals('Hello World'));
      });

      test('lowercases all-uppercase words', () {
        expect('HELLO WORLD'.toSmartTitleCase(), equals('Hello World'));
      });

      test('handles word starting with parenthesis', () {
        expect('(hello) world'.toSmartTitleCase(), equals('(Hello) World'));
      });

      test('handles parenthesized uppercase word', () {
        expect('(HELLO) WORLD'.toSmartTitleCase(), equals('(Hello) World'));
      });

      test('handles single word', () {
        expect('hello'.toSmartTitleCase(), equals('Hello'));
      });

      test('handles multiple spaces between words', () {
        expect('hello   world'.toSmartTitleCase(), equals('Hello World'));
      });

      test('trims leading and trailing whitespace', () {
        expect('  hello world  '.toSmartTitleCase(), equals('Hello World'));
      });

      test('handles single parenthesis character', () {
        // word.startsWith('(') && word.length > 1 is false for "("
        expect('('.toSmartTitleCase(), equals('('));
      });
    });
  });

  group('SmartTitlePrepositionCaseExtension', () {
    group('toSmartTitlePrepositionCase', () {
      test('returns empty string for empty input', () {
        expect(''.toSmartTitlePrepositionCase(), equals(''));
      });

      test('capitalizes first and last word always', () {
        expect(
          'the quick brown fox'.toSmartTitlePrepositionCase(),
          equals('The Quick Brown Fox'),
        );
      });

      test('keeps prepositions lowercase in middle position', () {
        expect(
          'lord of the rings'.toSmartTitlePrepositionCase(),
          equals('Lord of the Rings'),
        );
      });

      test('capitalizes preposition if it is the first word', () {
        expect(
          'the lord of the rings'.toSmartTitlePrepositionCase(),
          equals('The Lord of the Rings'),
        );
      });

      test('capitalizes preposition if it is the last word', () {
        expect(
          'something to look up'.toSmartTitlePrepositionCase(),
          equals('Something to Look Up'),
        );
      });

      test('handles word starting with parenthesis - non-preposition', () {
        expect(
          '(hello) of the world'.toSmartTitlePrepositionCase(),
          equals('(Hello) of the World'),
        );
      });

      test('handles word starting with parenthesis - preposition in middle',
          () {
        expect(
          'hello (of) the world'.toSmartTitlePrepositionCase(),
          equals('Hello (of) the World'),
        );
      });

      test('handles single word', () {
        expect('hello'.toSmartTitlePrepositionCase(), equals('Hello'));
      });

      test('handles uppercase input', () {
        expect(
          'LORD OF THE RINGS'.toSmartTitlePrepositionCase(),
          equals('Lord of the Rings'),
        );
      });

      test('keeps "and" lowercase in middle', () {
        expect(
          'bread and butter'.toSmartTitlePrepositionCase(),
          equals('Bread and Butter'),
        );
      });

      test('keeps "in" lowercase in middle', () {
        expect(
          'lost in translation'.toSmartTitlePrepositionCase(),
          equals('Lost in Translation'),
        );
      });

      test('handles "a" as preposition in middle', () {
        expect(
          'once upon a time'.toSmartTitlePrepositionCase(),
          equals('Once Upon a Time'),
        );
      });
    });

    group('toSentenceCase', () {
      test('returns empty string for empty input', () {
        expect(''.toSentenceCase(), equals(''));
      });

      test('capitalizes first letter and lowercases rest', () {
        expect('hello WORLD'.toSentenceCase(), equals('Hello world'));
      });

      test('handles already sentence-cased string', () {
        expect('Hello world'.toSentenceCase(), equals('Hello world'));
      });

      test('handles all uppercase string', () {
        expect('HELLO WORLD'.toSentenceCase(), equals('Hello world'));
      });

      test('handles single character', () {
        expect('a'.toSentenceCase(), equals('A'));
      });

      test('handles single uppercase character', () {
        expect('A'.toSentenceCase(), equals('A'));
      });

      test('preserves leading whitespace', () {
        expect('  hello'.toSentenceCase(), equals('  Hello'));
      });

      test('returns whitespace-only string as-is', () {
        expect('   '.toSentenceCase(), equals('   '));
      });
    });
  });

  group('HTMLTagTextExtractor', () {
    group('extractTagText', () {
      test('extracts text from default em tags', () {
        expect(
          'This is <em>important</em> text'.extractTagText(),
          equals(['important']),
        );
      });

      test('extracts multiple em tag contents', () {
        expect(
          '<em>first</em> and <em>second</em>'.extractTagText(),
          equals(['first', 'second']),
        );
      });

      test('returns empty list when no tags found', () {
        expect(
          'no tags here'.extractTagText(),
          equals([]),
        );
      });

      test('handles empty em tags', () {
        expect(
          '<em></em>'.extractTagText(),
          equals(['']),
        );
      });

      test('extracts from custom tag', () {
        expect(
          '<b>bold text</b>'.extractTagText(tag: 'b'),
          equals(['bold text']),
        );
      });

      test('handles case-insensitive tag matching', () {
        expect(
          '<EM>upper</EM>'.extractTagText(),
          equals(['upper']),
        );
      });

      test('returns empty list for empty string', () {
        expect(
          ''.extractTagText(),
          equals([]),
        );
      });

      test('extracts nested text but not nested tags', () {
        expect(
          '<em>text with <b>nested</b> tag</em>'.extractTagText(),
          equals(['text with <b>nested</b> tag']),
        );
      });
    });
  });

  group('RandomAlphaNum', () {
    group('appendRandomAlphaNum', () {
      test('appends characters to the string', () {
        final result = 'prefix_'.appendRandomAlphaNum();
        expect(result.length, equals('prefix_'.length + 6));
      });

      test('starts with the original string', () {
        final result = 'hello'.appendRandomAlphaNum();
        expect(result.startsWith('hello'), isTrue);
      });

      test('appends the specified number of characters', () {
        final result = 'test'.appendRandomAlphaNum(10);
        expect(result.length, equals('test'.length + 10));
      });

      test('appends 0 characters when length is 0', () {
        final result = 'test'.appendRandomAlphaNum(0);
        expect(result, equals('test'));
      });

      test('works with empty string', () {
        final result = ''.appendRandomAlphaNum(5);
        expect(result.length, equals(5));
      });

      test('appended characters are alphanumeric', () {
        final result = ''.appendRandomAlphaNum(100);
        final alphaNumRegex = RegExp(r'^[A-Za-z0-9]+$');
        expect(alphaNumRegex.hasMatch(result), isTrue);
      });

      test('produces different results on successive calls', () {
        // With default length of 6, collision is extremely unlikely
        final results = <String>{};
        for (int i = 0; i < 10; i++) {
          results.add(''.appendRandomAlphaNum(20));
        }
        // At least some should be unique (virtually guaranteed with 20 chars)
        expect(results.length, greaterThan(1));
      });
    });
  });
}
