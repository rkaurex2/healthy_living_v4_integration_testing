import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/data/models/search/search_cleaners_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_cosmetic_product_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_food_product_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_food_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_skin_deep_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_cleaner_product_response_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_sunscreen_cosmetic_product_dto.dart';
import 'package:healthy_living_shared/src/data/models/search/search_sunscreen_response_dto.dart';

extension SearchResponseMapper on SearchSkinDeepResponseDTO {
  List<GeneralProductListItemUIModel> toDomain() {
    return cosmetics?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension SearchSunscreenResponseDTOMapper on SearchSunscreenResponseDTO {
  List<GeneralProductListItemUIModel> toDomain() {
    return cosmetics?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension SearchFoodResponseDTOMapper on SearchFoodResponseDTO {
  List<GeneralProductListItemUIModel> toDomain() {
    return foods?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension SearchCleanersResponseDTOMapper on SearchCleanersResponseDTO {
  List<GeneralProductListItemUIModel> toDomain() {
    return cleaners?.map((e) => e.toDomain()).toList() ?? [];
  }
}

extension JustVerifiedItemListMapper on SearchCosmeticProductResponseDTO {
  GeneralProductListItemUIModel toDomain() {
    final scoreSubstrings = score?.split("_") ?? [];
    final grade = scoreSubstrings.isNotEmpty ? scoreSubstrings[0] : "0";

    return GeneralProductListItemUIModel(
      productId: productId ?? -1,
      imageUrl: imageUrl ?? mediumImageUrl ?? "",
      productName: name ?? "",
      isEWGVerified: ewgVerified ?? false,
      brandName: brandName ?? "",
      productType: productType ?? "",
      score: grade,
      categoryType: SearchType.personalCare.value,
      ingredientPreferenceIndicator: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension SearchSunscreenCosmeticProductDTOMapper
    on SearchSunscreenCosmeticProductDTO {
  GeneralProductListItemUIModel toDomain() {
    final scoreSubstrings = score?.split("_") ?? [];
    final grade = scoreSubstrings.isNotEmpty ? scoreSubstrings[0] : "0";
    return GeneralProductListItemUIModel(
      productId: productId ?? -1,
      imageUrl: imageUrl ?? "",
      productName: name ?? "",
      isEWGVerified: ewgVerified ?? false,
      brandName: brandName ?? "",
      productType: productType ?? "",
      score: grade,
      categoryType: SearchType.personalCare.value,
      ingredientPreferenceIndicator: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension SearchCleanerProductResponseDTOMapper
    on SearchCleanerProductResponseDTO {
  GeneralProductListItemUIModel toDomain() {
    return GeneralProductListItemUIModel(
      productId: id ?? -1,
      imageUrl: browseImageUrl ?? "",
      productName: name ?? "",
      isEWGVerified: grade == "VERIFIED",
      brandName: brandName ?? "",
      productType: productType ?? "",
      score: grade ?? "",
      categoryType: SearchType.cleaner.value,
      ingredientPreferenceIndicator: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension SearchFoodProductDTOMapper on SearchFoodProductDTO {
  GeneralProductListItemUIModel toDomain() {
    return GeneralProductListItemUIModel(
      productId: productId ?? -1,
      imageUrl: imageUrl ?? "",
      productName: name ?? "",
      isEWGVerified: false,
      brandName: brandName ?? "",
      productType: productType ?? "",
      score: HealthyLivingSharedUtils.formatFoodScore(scores?["overall"]),
      categoryType: SearchType.food.value,
      ingredientPreferenceIndicator: ingredientPreferenceIndicator?.toDomain(),
    );
  }
}
