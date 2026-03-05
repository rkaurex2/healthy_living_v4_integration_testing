import 'package:healthy_living_shared/healthy_living_shared.dart';

extension UserListModelListMapper on List<UserListDTO?> {
  List<UserListModel> toDomain() {
    return map((e) => e?.toDomain()).whereType<UserListModel>().toList();
  }
}

extension UserListModelMapper on UserListDTO {
  UserListModel toDomain() {
    return UserListModel(
      id: id ?? 0,
      createdAt: createdAt ?? "",
      updatedAt: updatedAt ?? "",
      name: name ?? listName ?? "",
      itemsCount: itemsCount ?? 0,
      totalEntries: 0,
      url: url ?? "",
      skippedItems: skippedItems ?? [],
      items: items?.map((e) => e.toDomain()).toList() ?? [],
    );
  }
}

extension UserListItemsModelMapper on UserListItemsDTO {
  UserListItemsModel toDomain() {
    return UserListItemsModel(
      id: id,
      position: position,
      productId: productId,
      productType: productType,
      product: product?.toDomain(),
      productSelectionType: ProductSelectionType.none,
      ingredientPreferenceIndicator:
          product?.ingredientPreferenceIndicator?.toDomain(),
    );
  }
}

extension UserListProductModelMapper on UserListProductDTO {
  UserListProductModel toDomain() {
    return UserListProductModel(
      productType: productType,
      productId: productId ?? id,
      brandName: brandName,
      brandId: brandId,
      skinDeepId: skinDeepId,
      companyName: companyName,
      name: name,
      upcs: upcs,
      imageUrl: imageUrl ?? mediumImageUrl ?? "",
      score: score,
      ewgVerified: ewgVerified,
      verifiedDate: verifiedDate,
      retailers: retailers,
      webUrl: webUrl,
      id: id,
      toParam: toParam,
      brandLineId: brandLineId,
      grade: grade,
      searchGrade: searchGrade,
      discontinued: discontinued,
      browseImageUrl: browseImageUrl,
      mediumImageUrl: mediumImageUrl,
      numberOfFormulations: numberOfFormulations,
      greenCertified: greenCertified,
      business: business?.toDomain(),
      nameCorrectionSubmitted: nameCorrectionSubmitted,
      postdate: postdate,
      productSize: productSize,
      imageSource: imageSource,
      asinList: asinList,
      scores: scores?.toDomain(),
      categoryDisplayName: categoryDisplayName,
      categoryLinkName: categoryLinkName,
      categoryGroups: categoryGroups,
      attributes: attributes,
      certifications: certifications,
      companyCommunications: companyCommunications,
    );
  }
}

extension UserListBusinessModelMapper on UserListBusinessDTO {
  UserListBusinessModel toDomain() {
    return UserListBusinessModel(
      id: id,
      asParam: asParam,
      name: name,
      logoUrl: logoUrl,
    );
  }
}

extension UserListScoresModelMapper on UserListScoresDTO {
  UserListScoresModel toDomain() {
    return UserListScoresModel(
      overall: overall,
      sortOverall: sortOverall,
      nutrition: nutrition,
      ingredient: ingredient,
      processing: processing,
      percentNutrition: percentNutrition,
      percentIngredient: percentIngredient,
      percentProcessing: percentProcessing,
    );
  }
}
