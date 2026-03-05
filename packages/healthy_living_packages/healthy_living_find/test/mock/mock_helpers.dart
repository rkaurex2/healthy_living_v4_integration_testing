// Run in healthy_living_find root:
//   flutter pub run build_runner build --delete-conflicting-outputs

import 'package:mockito/annotations.dart';
import 'package:healthy_living_find/src/domain/repository/universal_search_repository.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/analytics/browse_analytics.dart';

@GenerateMocks([
  UniversalSearchRepository,
  SearchAnalytics,
  BrowseAnalytics,
])
void main() {}
