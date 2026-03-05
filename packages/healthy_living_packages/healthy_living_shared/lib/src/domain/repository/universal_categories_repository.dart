import 'package:healthy_living_shared/src/ui/models/browse_categories/browse_universal_categories_model.dart';
import 'package:network/network.dart';

abstract interface class UniversalCategoriesRepository {
  Future<NetworkResponse<BrowseUniversalCategoriesModel?>>
  universalCategories({required bool isEWGVerified});
}
