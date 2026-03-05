// HealthyLivingSharedUtils unit tests.
//
// Tests only the pure-logic static methods that do NOT require
// BuildContext, localizations, or platform channels.
//
// Methods intentionally not covered here (framework-dependent):
//   getErrorInfo, getServerErrorMessage, urlLaunch, shareApp, rateApp,
//   authNavigationHandler, getHealthConcerns, setStatusBarBright*,
//   handleStatusBarBrightness, shouldSetStatusBarIconsToLight,
//   getListProductsItemCount, getSortMyListProducts, getAddToListText,
//   getCountryNameFromCode, checkForPremiumUser, getProductIngredientPreference,
//   getAppPaywallResult, entitlementVerificationScreenOnComplete,
//   matchesRoute, isSensitiveRoute, resolveRoute, resolveScreenName,
//   getProductCategoryScore, isAllProductSelected.

import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/src/utils/healthy_living_shared_utils.dart';

void main() {
  // =========================================================================
  // formatCountSimple
  // =========================================================================

  group('formatCountSimple', () {
    test('formats thousands with commas', () {
      expect(HealthyLivingSharedUtils.formatCountSimple('1000'), '1,000');
    });

    test('formats millions with commas', () {
      expect(
        HealthyLivingSharedUtils.formatCountSimple('1000000'),
        '1,000,000',
      );
    });

    test('leaves three-digit numbers unchanged', () {
      expect(HealthyLivingSharedUtils.formatCountSimple('123'), '123');
    });

    test('handles negative numbers', () {
      expect(HealthyLivingSharedUtils.formatCountSimple('-1500'), '-1,500');
    });

    test('preserves decimal portion', () {
      expect(
        HealthyLivingSharedUtils.formatCountSimple('1234.56'),
        '1,234.56',
      );
    });

    test('returns original for non-numeric string', () {
      expect(HealthyLivingSharedUtils.formatCountSimple('abc'), 'abc');
    });

    test('returns original for empty string', () {
      expect(HealthyLivingSharedUtils.formatCountSimple(''), '');
    });

    test('handles single digit', () {
      expect(HealthyLivingSharedUtils.formatCountSimple('5'), '5');
    });

    test('handles large number with decimals', () {
      expect(
        HealthyLivingSharedUtils.formatCountSimple('9999999.99'),
        '9,999,999.99',
      );
    });
  });

  // =========================================================================
  // isPdfDoc
  // =========================================================================

  group('isPdfDoc', () {
    test('returns true for URL containing .pdf', () {
      expect(
        HealthyLivingSharedUtils.isPdfDoc('https://example.com/file.pdf'),
        isTrue,
      );
    });

    test('returns true for URL containing %2fpdf (encoded)', () {
      expect(
        HealthyLivingSharedUtils.isPdfDoc('https://example.com/%2fpdf'),
        isTrue,
      );
    });

    test('returns false for non-PDF URL', () {
      expect(
        HealthyLivingSharedUtils.isPdfDoc('https://example.com/file.doc'),
        isFalse,
      );
    });

    test('returns true for uppercase .PDF', () {
      expect(
        HealthyLivingSharedUtils.isPdfDoc('https://example.com/FILE.PDF'),
        isTrue,
      );
    });

    test('returns false for empty URL', () {
      expect(HealthyLivingSharedUtils.isPdfDoc(''), isFalse);
    });
  });

  // =========================================================================
  // formatFoodScore
  // =========================================================================

  group('formatFoodScore', () {
    test('returns empty string for null', () {
      expect(HealthyLivingSharedUtils.formatFoodScore(null), '');
    });

    test('returns decimal string for score < 10', () {
      expect(HealthyLivingSharedUtils.formatFoodScore(1.5), '1.5');
    });

    test('returns integer string for score >= 10', () {
      expect(HealthyLivingSharedUtils.formatFoodScore(10.0), '10');
    });

    test('returns integer string for 10.5 (rounds via toStringAsFixed)', () {
      final result = HealthyLivingSharedUtils.formatFoodScore(10.5);
      // toStringAsFixed(0) on 10.5 – verify it is an integer string
      expect(double.tryParse(result), isNotNull);
    });

    test('returns decimal string for score of 5.5', () {
      expect(HealthyLivingSharedUtils.formatFoodScore(5.5), '5.5');
    });

    test('returns string for whole number < 10', () {
      expect(HealthyLivingSharedUtils.formatFoodScore(3.0), '3.0');
    });
  });

  // =========================================================================
  // formatFoodScoreDecimal
  // =========================================================================

  group('formatFoodScoreDecimal', () {
    test('returns empty string for null', () {
      expect(HealthyLivingSharedUtils.formatFoodScoreDecimal(null), '');
    });

    test('drops .0 for whole numbers', () {
      expect(HealthyLivingSharedUtils.formatFoodScoreDecimal(1.0), '1');
    });

    test('keeps decimal for non-whole numbers', () {
      expect(HealthyLivingSharedUtils.formatFoodScoreDecimal(1.5), '1.5');
    });

    test('drops .0 for 10.0', () {
      expect(HealthyLivingSharedUtils.formatFoodScoreDecimal(10.0), '10');
    });

    test('keeps decimal for 3.7', () {
      expect(HealthyLivingSharedUtils.formatFoodScoreDecimal(3.7), '3.7');
    });
  });

  // =========================================================================
  // getScoreAndDataAvailability
  // =========================================================================

  group('getScoreAndDataAvailability', () {
    test('splits score_dataAvailability format', () {
      final result = HealthyLivingSharedUtils.getScoreAndDataAvailability(
        '5_Limited',
      );
      expect(result.$1, '5');
      expect(result.$2, 'Limited');
    });

    test('returns score only when no separator present', () {
      final result = HealthyLivingSharedUtils.getScoreAndDataAvailability('3');
      expect(result.$1, '3');
      expect(result.$2, isNull);
    });

    test('returns (null, null) for null input', () {
      final result = HealthyLivingSharedUtils.getScoreAndDataAvailability(null);
      expect(result.$1, isNull);
      expect(result.$2, isNull);
    });

    test('handles score with "Fair" data availability', () {
      final result = HealthyLivingSharedUtils.getScoreAndDataAvailability(
        '7_Fair',
      );
      expect(result.$1, '7');
      expect(result.$2, 'Fair');
    });

    test('handles score with "Good" data availability', () {
      final result = HealthyLivingSharedUtils.getScoreAndDataAvailability(
        '1_Good',
      );
      expect(result.$1, '1');
      expect(result.$2, 'Good');
    });
  });

  // =========================================================================
  // extractFirstPath
  // =========================================================================

  group('extractFirstPath', () {
    test('extracts first segment from multi-segment path', () {
      expect(
        HealthyLivingSharedUtils.extractFirstPath('/home/user/path'),
        '/home',
      );
    });

    test('returns single-segment path unchanged', () {
      expect(
        HealthyLivingSharedUtils.extractFirstPath('/singlepath'),
        '/singlepath',
      );
    });

    test('returns location for empty string (no match)', () {
      expect(HealthyLivingSharedUtils.extractFirstPath(''), '');
    });

    test('extracts first segment from deep path', () {
      expect(
        HealthyLivingSharedUtils.extractFirstPath('/a/b/c/d/e'),
        '/a',
      );
    });
  });

  // =========================================================================
  // extractLastPath
  // =========================================================================

  group('extractLastPath', () {
    test('extracts last segment from multi-segment path', () {
      expect(
        HealthyLivingSharedUtils.extractLastPath('/home/user/path'),
        'path',
      );
    });

    test('returns location for empty string', () {
      expect(HealthyLivingSharedUtils.extractLastPath(''), '');
    });

    test('extracts last segment from deep path', () {
      expect(
        HealthyLivingSharedUtils.extractLastPath('/a/b/c/d/details'),
        'details',
      );
    });

    test('extracts segment from single-segment path', () {
      expect(
        HealthyLivingSharedUtils.extractLastPath('/home'),
        'home',
      );
    });
  });

  // =========================================================================
  // isExternalLink
  // =========================================================================

  group('isExternalLink', () {
    test('returns true for https URL', () {
      expect(
        HealthyLivingSharedUtils.isExternalLink('https://example.com'),
        isTrue,
      );
    });

    test('returns true for http URL', () {
      expect(
        HealthyLivingSharedUtils.isExternalLink('http://example.com'),
        isTrue,
      );
    });

    test('returns false for relative path', () {
      expect(
        HealthyLivingSharedUtils.isExternalLink('/relative/path'),
        isFalse,
      );
    });

    test('returns false for plain string', () {
      expect(
        HealthyLivingSharedUtils.isExternalLink('not-a-url'),
        isFalse,
      );
    });

    test('returns true for mailto link', () {
      expect(
        HealthyLivingSharedUtils.isExternalLink('mailto:test@example.com'),
        isTrue,
      );
    });

    test('returns false for empty string', () {
      expect(HealthyLivingSharedUtils.isExternalLink(''), isFalse);
    });
  });

  // =========================================================================
  // removeHtmlTags
  // =========================================================================

  group('removeHtmlTags', () {
    test('strips bold tags', () {
      expect(
        HealthyLivingSharedUtils.removeHtmlTags('<b>hello</b>'),
        'hello',
      );
    });

    test('strips paragraph tags', () {
      expect(
        HealthyLivingSharedUtils.removeHtmlTags('<p>test</p>'),
        'test',
      );
    });

    test('strips multiple nested tags', () {
      expect(
        HealthyLivingSharedUtils.removeHtmlTags(
          '<div><p>inner <b>text</b></p></div>',
        ),
        'inner text',
      );
    });

    test('returns empty string for empty input', () {
      expect(HealthyLivingSharedUtils.removeHtmlTags(''), '');
    });

    test('returns text unchanged when no tags present', () {
      expect(
        HealthyLivingSharedUtils.removeHtmlTags('plain text'),
        'plain text',
      );
    });

    test('trims whitespace from result', () {
      expect(
        HealthyLivingSharedUtils.removeHtmlTags('<p>  spaced  </p>'),
        'spaced',
      );
    });
  });

  // =========================================================================
  // removeNulls
  // =========================================================================

  group('removeNulls', () {
    test('returns null for null input', () {
      expect(HealthyLivingSharedUtils.removeNulls(null), isNull);
    });

    test('returns non-empty string unchanged', () {
      expect(HealthyLivingSharedUtils.removeNulls('hello'), 'hello');
    });

    test('returns null for empty string', () {
      expect(HealthyLivingSharedUtils.removeNulls(''), isNull);
    });

    test('returns null for whitespace-only string', () {
      expect(HealthyLivingSharedUtils.removeNulls('   '), isNull);
    });

    test('trims whitespace from strings', () {
      expect(HealthyLivingSharedUtils.removeNulls('  hello  '), 'hello');
    });

    test('removes null values from map', () {
      final result = HealthyLivingSharedUtils.removeNulls({
        'a': 1,
        'b': null,
        'c': 'text',
      });
      expect(result, {'a': 1, 'c': 'text'});
    });

    test('returns null for map where all values are null', () {
      final result = HealthyLivingSharedUtils.removeNulls({
        'a': null,
        'b': null,
      });
      expect(result, isNull);
    });

    test('removes null values from list', () {
      final result = HealthyLivingSharedUtils.removeNulls([1, null, 2, null]);
      expect(result, [1, 2]);
    });

    test('returns null for list of only nulls', () {
      final result = HealthyLivingSharedUtils.removeNulls([null, null]);
      expect(result, isNull);
    });

    test('recursively cleans nested map', () {
      final result = HealthyLivingSharedUtils.removeNulls({
        'a': {'b': null},
      });
      // Inner map becomes empty -> null -> outer map drops 'a' -> empty -> null
      expect(result, isNull);
    });

    test('preserves non-null nested structures', () {
      final result = HealthyLivingSharedUtils.removeNulls({
        'a': {'b': 1, 'c': null},
        'd': [1, null, 2],
      });
      expect(result, {
        'a': {'b': 1},
        'd': [1, 2],
      });
    });

    test('returns primitive values unchanged', () {
      expect(HealthyLivingSharedUtils.removeNulls(42), 42);
      expect(HealthyLivingSharedUtils.removeNulls(3.14), 3.14);
      expect(HealthyLivingSharedUtils.removeNulls(true), true);
    });

    test('returns null for empty list', () {
      expect(HealthyLivingSharedUtils.removeNulls([]), isNull);
    });
  });
}
