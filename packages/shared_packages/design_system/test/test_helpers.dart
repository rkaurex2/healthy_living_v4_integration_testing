import 'dart:ui';

/// Canonical device sizes for multi-device widget testing.
/// All screen test files must import from this file — never redefine.
const Map<String, Size> kTestDeviceSizes = {
  'iPhone SE': Size(375, 667),
  'iPhone 16': Size(393, 852),
  'iPhone 16 Max': Size(430, 932),
  'iPad 10th': Size(820, 1180),
  'Android S': Size(360, 800),
  'Android L': Size(412, 915),
  'Pixel Tablet': Size(1280, 800),
};
