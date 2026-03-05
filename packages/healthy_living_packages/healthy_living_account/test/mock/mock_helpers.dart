// Run in healthy_living_account root:
//   flutter pub run build_runner build --delete-conflicting-outputs

import 'package:mockito/annotations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:storage/storage.dart';

@GenerateMocks([
  // Repositories used by MyAccountBloc
  UserDataRepository,
  SessionRepository,
  KeyValueStorage,

  // Repositories / analytics used by IngredientPreferenceBloc
  IngredientPreferenceRepository,
  IngredientPreferenceAnalytics,
])
void main() {}
