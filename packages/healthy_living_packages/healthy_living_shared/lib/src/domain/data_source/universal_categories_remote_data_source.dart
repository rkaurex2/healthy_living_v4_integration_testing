import 'package:healthy_living_shared/src/domain/models/browse_categories/browse_universal_categories_dto.dart';
import 'package:network/network.dart';

abstract interface class UniversalCategoriesRemoteDataSource {
  Future<NetworkResponse<BrowseUniversalCategoriesDTO?>> universalCategories({
    required isEwgVerified,
  });
}
