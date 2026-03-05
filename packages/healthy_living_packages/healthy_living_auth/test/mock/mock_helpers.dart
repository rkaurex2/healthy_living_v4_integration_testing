import 'package:mockito/annotations.dart';
import 'package:healthy_living_auth/src/domain/repository/auth_repository.dart';
import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/core/purchase_user_service.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:storage/storage.dart';

// Run `dart run build_runner build --delete-conflicting-outputs` in the
// healthy_living_auth package directory to regenerate mock_helpers.mocks.dart.
@GenerateMocks([
  AuthRepository,
  SessionRepository,
  KeyValueStorage,
  AnalyticsService,
  AuthAnalytics,
  PurchaseUserService,
])
void main() {}
