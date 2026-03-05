import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_detail_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:storage/storage.dart';

// Generate mocks for all interfaces and classes needed across shared tests.
//
// Run code generation with:
//   flutter pub run build_runner build --delete-conflicting-outputs
//
// from the healthy_living_shared package root.
//
// @GenerateMocks generates strict mocks (calls to unstubbed methods throw).
// @GenerateNiceMocks generates nice mocks (unstubbed methods return sensible
// defaults).  We use nice mocks for concrete service classes that have complex
// constructors (e.g. AnalyticsService) and strict mocks for interfaces.

@GenerateMocks([
  // Repository interfaces (abstract interface class)
  SessionRepository,
  UserDataRepository,
  NewsletterRepository,
  // Data source interfaces
  SessionLocalDataSource,
  SessionRemoteDataSource,
  // Storage abstract class
  KeyValueStorage,
  // List repositories
  MyListRepository,
  MyListDetailRepository,
  // Analytics
  PaywallAnalytics,
  CreateListAnalytics,
])
@GenerateNiceMocks([
  // AnalyticsService is a concrete @LazySingleton class with a FirebaseAnalytics
  // dependency; a nice mock avoids having to stub every method.
  MockSpec<AnalyticsService>(),
])
void main() {}
