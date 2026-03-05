import 'dart:convert';

import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchScreenParams {
  final SearchTabType? initialSelectedTabType;
  final bool shouldDisplayTabBar;
  final String? textInputHintText;
  final String? listNameAddToList;
  final bool productListSelectionActivate;
  final ProductSelectionOptionsItem? productSelectionOptionsItem;
  final SearchType? searchType;
  final bool? isEWGVerified;
  final CompareProductItem? defaultCompareProductItem;
  final String? initialSearchQuery;
  final int? brandId;
  final bool isFromProductDetail;

  const SearchScreenParams({
    this.initialSelectedTabType,
    this.shouldDisplayTabBar = true,
    this.productListSelectionActivate = false,
    this.productSelectionOptionsItem,
    this.listNameAddToList,
    this.defaultCompareProductItem,
    this.textInputHintText,
    this.searchType,
    this.isEWGVerified,
    this.initialSearchQuery,
    this.brandId,
    this.isFromProductDetail=false,
  });

  Map<String, String> toExtraParameters() => {
    'initialSelectedTabType': initialSelectedTabType?.name ?? '',
    'shouldDisplayTabBar': shouldDisplayTabBar.toString(),
    'textInputHintText': textInputHintText.toString(),
    'productListSelectionActivate': productListSelectionActivate.toString(),
    'productSelectionOptionsItem': productSelectionOptionsItem?.name ?? "",
    'listNameAddToList': listNameAddToList ?? "",
    'searchType': searchType?.name ?? "",
    'defaultCompareProductItem': jsonEncode(defaultCompareProductItem),
    'initialSearchQuery': initialSearchQuery ?? '',
    'brandId': brandId.toString(),
  };

  static SearchScreenParams fromExtraParameters(Map<String, String> params) {
    final tabType = SearchTabType.fromName(params['initialSelectedTabType']);
    final selectionType = ProductSelectionOptionsItem.fromName(
      params['productSelectionOptionsItem'],
    );
    final searchType = SearchType.fromName(params['searchType']);

    return SearchScreenParams(
      initialSelectedTabType: tabType,
      shouldDisplayTabBar: params['shouldDisplayTabBar'] == 'true',
      productListSelectionActivate:
          params['productListSelectionActivate'] == 'true',
      textInputHintText: params['textInputHintText'],
      productSelectionOptionsItem: selectionType,
      listNameAddToList: params['listNameAddToList'],
      searchType: searchType,
      defaultCompareProductItem: jsonDecode(
        params["defaultCompareProductItem"] ?? "",
      ),
      initialSearchQuery: params['initialSearchQuery'],
      brandId: int.tryParse(params['brandId'] ?? ""),
    );
  }
}
