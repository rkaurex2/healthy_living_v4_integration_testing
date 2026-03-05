// HazardLevel extension unit tests.
//
// Tests the pure-logic String -> HazardLevel mapping in
// RatingHazardLevelExtension and the static HazardLevelMapper.fromScore.
// Widget/color/text methods that need BuildContext or localization are
// intentionally not tested here (requires widget test harness).

import 'package:flutter_test/flutter_test.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

void main() {
  // =========================================================================
  // RatingHazardLevelExtension – ratingHazardLevel (String -> HazardLevel?)
  // =========================================================================

  group('RatingHazardLevelExtension.ratingHazardLevel', () {
    // -----------------------------------------------------------------------
    // Named-string mapping
    // -----------------------------------------------------------------------
    group('named strings', () {
      test('"verified" -> HazardLevel.verified', () {
        expect('verified'.ratingHazardLevel, HazardLevel.verified);
      });

      test('"ewg verified" -> HazardLevel.verified', () {
        expect('ewg verified'.ratingHazardLevel, HazardLevel.verified);
      });

      test('"lowest" -> HazardLevel.lowest', () {
        expect('lowest'.ratingHazardLevel, HazardLevel.lowest);
      });

      test('"very low" -> HazardLevel.lowest', () {
        expect('very low'.ratingHazardLevel, HazardLevel.lowest);
      });

      test('"low" -> HazardLevel.low', () {
        expect('low'.ratingHazardLevel, HazardLevel.low);
      });

      test('"moderate" -> HazardLevel.moderate', () {
        expect('moderate'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"medium" -> HazardLevel.moderate', () {
        expect('medium'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"high" -> HazardLevel.high', () {
        expect('high'.ratingHazardLevel, HazardLevel.high);
      });

      test('"highest" -> HazardLevel.highest', () {
        expect('highest'.ratingHazardLevel, HazardLevel.highest);
      });

      test('"very high" -> HazardLevel.highest', () {
        expect('very high'.ratingHazardLevel, HazardLevel.highest);
      });

      test('"severe" -> HazardLevel.highest', () {
        expect('severe'.ratingHazardLevel, HazardLevel.highest);
      });

      test('"extreme" -> HazardLevel.highest', () {
        expect('extreme'.ratingHazardLevel, HazardLevel.highest);
      });

      test('"no data" -> HazardLevel.noData', () {
        expect('no data'.ratingHazardLevel, HazardLevel.noData);
      });

      test('"unknown" -> null', () {
        expect('unknown'.ratingHazardLevel, isNull);
      });

      test('empty string -> null', () {
        expect(''.ratingHazardLevel, isNull);
      });
    });

    // -----------------------------------------------------------------------
    // Normalisation – underscores, hyphens, mixed case
    // -----------------------------------------------------------------------
    group('normalisation', () {
      test('"VERIFIED" (uppercase) -> HazardLevel.verified', () {
        expect('VERIFIED'.ratingHazardLevel, HazardLevel.verified);
      });

      test('"Very_Low" (underscore) -> HazardLevel.lowest', () {
        expect('Very_Low'.ratingHazardLevel, HazardLevel.lowest);
      });

      test('"no-data" (hyphen) -> HazardLevel.noData', () {
        expect('no-data'.ratingHazardLevel, HazardLevel.noData);
      });

      test('"EWG_VERIFIED" -> HazardLevel.verified', () {
        expect('EWG_VERIFIED'.ratingHazardLevel, HazardLevel.verified);
      });

      test('"  low  " (whitespace padded) -> HazardLevel.low', () {
        expect('  low  '.ratingHazardLevel, HazardLevel.low);
      });
    });

    // -----------------------------------------------------------------------
    // Letter grades (A-F)
    // -----------------------------------------------------------------------
    group('letter grades', () {
      test('"A" -> HazardLevel.lowest', () {
        expect('A'.ratingHazardLevel, HazardLevel.lowest);
      });

      test('"B" -> HazardLevel.low', () {
        expect('B'.ratingHazardLevel, HazardLevel.low);
      });

      test('"C" -> HazardLevel.moderate', () {
        expect('C'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"D" -> HazardLevel.high', () {
        expect('D'.ratingHazardLevel, HazardLevel.high);
      });

      test('"E" -> HazardLevel.high', () {
        expect('E'.ratingHazardLevel, HazardLevel.high);
      });

      test('"F" -> HazardLevel.highest', () {
        expect('F'.ratingHazardLevel, HazardLevel.highest);
      });

      test('"a" (lowercase) -> HazardLevel.lowest', () {
        expect('a'.ratingHazardLevel, HazardLevel.lowest);
      });

      test('"G" (unmapped letter) -> null', () {
        expect('G'.ratingHazardLevel, isNull);
      });
    });

    // -----------------------------------------------------------------------
    // Integer scores (1-10)
    // -----------------------------------------------------------------------
    group('integer scores', () {
      test('"1" -> HazardLevel.low', () {
        expect('1'.ratingHazardLevel, HazardLevel.low);
      });

      test('"2" -> HazardLevel.low', () {
        expect('2'.ratingHazardLevel, HazardLevel.low);
      });

      test('"3" -> HazardLevel.moderate', () {
        expect('3'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"6" -> HazardLevel.moderate', () {
        expect('6'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"7" -> HazardLevel.high', () {
        expect('7'.ratingHazardLevel, HazardLevel.high);
      });

      test('"9" -> HazardLevel.high', () {
        expect('9'.ratingHazardLevel, HazardLevel.high);
      });
    });

    // -----------------------------------------------------------------------
    // Double scores (1.0-10.0)
    // -----------------------------------------------------------------------
    group('double scores', () {
      test('"1.0" -> HazardLevel.low', () {
        expect('1.0'.ratingHazardLevel, HazardLevel.low);
      });

      test('"3.9" -> HazardLevel.low', () {
        expect('3.9'.ratingHazardLevel, HazardLevel.low);
      });

      test('"4.0" -> HazardLevel.moderate', () {
        expect('4.0'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"7.9" -> HazardLevel.moderate', () {
        expect('7.9'.ratingHazardLevel, HazardLevel.moderate);
      });

      test('"8.0" -> HazardLevel.high', () {
        expect('8.0'.ratingHazardLevel, HazardLevel.high);
      });

      test('"10.0" -> HazardLevel.high', () {
        expect('10.0'.ratingHazardLevel, HazardLevel.high);
      });
    });
  });

  // =========================================================================
  // HazardLevelMapper.fromScore (String -> HazardLevel)
  // =========================================================================

  group('HazardLevelMapper.fromScore', () {
    test('"1" -> HazardLevel.low', () {
      expect(HazardLevelMapper.fromScore('1'), HazardLevel.low);
    });

    test('"2" -> HazardLevel.low', () {
      expect(HazardLevelMapper.fromScore('2'), HazardLevel.low);
    });

    test('"3" -> HazardLevel.moderate', () {
      expect(HazardLevelMapper.fromScore('3'), HazardLevel.moderate);
    });

    test('"4" -> HazardLevel.moderate', () {
      expect(HazardLevelMapper.fromScore('4'), HazardLevel.moderate);
    });

    test('"5" -> HazardLevel.moderate', () {
      expect(HazardLevelMapper.fromScore('5'), HazardLevel.moderate);
    });

    test('"6" -> HazardLevel.moderate', () {
      expect(HazardLevelMapper.fromScore('6'), HazardLevel.moderate);
    });

    test('"7" -> HazardLevel.high (default)', () {
      expect(HazardLevelMapper.fromScore('7'), HazardLevel.high);
    });

    test('"10" -> HazardLevel.high (default)', () {
      expect(HazardLevelMapper.fromScore('10'), HazardLevel.high);
    });

    test('empty string -> HazardLevel.high (default)', () {
      expect(HazardLevelMapper.fromScore(''), HazardLevel.high);
    });
  });
}
