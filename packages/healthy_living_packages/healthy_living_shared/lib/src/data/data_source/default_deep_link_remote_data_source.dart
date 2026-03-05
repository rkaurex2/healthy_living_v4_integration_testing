import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/data_source/deep_link_remote_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/material.dart';

@LazySingleton(as: DeepLinkRemoteDataSource)
class DefaultDeepLinkRemoteDataSource implements DeepLinkRemoteDataSource {
  static DefaultDeepLinkRemoteDataSource? _instance;

  DefaultDeepLinkRemoteDataSource._internal();

  @factoryMethod
  factory DefaultDeepLinkRemoteDataSource() {
    _instance ??= DefaultDeepLinkRemoteDataSource._internal();
    return _instance!;
  }

  @override
  Future<bool> getProductDeeplink(
    DeepLinkProductRequest productRequest, {
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) async {
    if (!productRequest.productId.isValidValue) {
      return false;
    }

    String campaign = '';
    String alias = '';
    String webUrl = '';
    final String productNameTag = productRequest.productName.replaceAll(' ', '_');

    switch (productRequest.category) {
      case ProductCategory.cleaner:
        campaign = StringConstants.shareCleanerCampaign;
        alias = StringConstants.productType.appendRandomAlphaNum();
        webUrl =
            '${UrlConstants.cleanerProductsSharePath}${productRequest.productId}';
        break;
      case ProductCategory.food:
        campaign = StringConstants.shareFoodCampaign;
        alias = StringConstants.productType.appendRandomAlphaNum();
        webUrl =
            '${UrlConstants.foodProductsSharePath}${productRequest.productId}';
        break;
      case ProductCategory.personalCare:
      case ProductCategory.sunscreen:
        campaign = StringConstants.sharePcpCampaign;
        alias = StringConstants.productType.appendRandomAlphaNum();
        webUrl =
            '${UrlConstants.pcpProductsSharePath}${productRequest.productId}';
        break;
    }

    final BranchUniversalObject branchUniversalObject = BranchUniversalObject(
      canonicalIdentifier:
          '${StringConstants.productType}/${productRequest.productId}',
      title: productRequest.productName,
      contentDescription: '$sharingTitle: ${productRequest.productName}',
      imageUrl: productRequest.photoUrl ?? "",
      contentMetadata:
          BranchContentMetaData()
            ..addCustomMetadata(StringConstants.type, StringConstants.productType)
            ..addCustomMetadata(
              StringConstants.productCategory,
              productRequest.category.value,
            )
            ..addCustomMetadata(StringConstants.isVerified, productRequest.isVerified)
            ..addCustomMetadata(StringConstants.webUrl, webUrl)
            ..addCustomMetadata(StringConstants.productName, productRequest.productName)
            ..addCustomMetadata(StringConstants.productId, productRequest.productId),
    );

    final BranchLinkProperties branchLinkProperties = BranchLinkProperties(
      alias: alias,
      channel: StringConstants.shareChannel,
      feature: StringConstants.shareFeature,
      campaign: campaign,
      tags: [productNameTag, productRequest.productId],
    );
    branchLinkProperties.addControlParam(StringConstants.fallbackUrl, webUrl);
    branchLinkProperties.addControlParam(StringConstants.desktopDeeplinkPath, webUrl);

    final BranchResponse response = await FlutterBranchSdk.showShareSheet(
      buo: branchUniversalObject,
      linkProperties: branchLinkProperties,
      messageText: messageText,
      androidMessageTitle: messageTitle,
      androidSharingTitle: sharingTitle,
    );

    if (response.success) {
      return true;
    } else {
      debugPrint('Error : ${response.errorCode} - ${response.errorMessage}');
      return false;
    }
  }

  @override
  Future<bool> getMyListDeeplink({
    required String listId,
    required String listName,
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) async {
    if (!listId.isValidValue) {
      return false;
    }

    final String campaign = StringConstants.shareListCampaign;
    final String alias = StringConstants.listType.appendRandomAlphaNum();
    final String webUrl = '${UrlConstants.listSharePath}$listId';
    final String listNameTag = listName.replaceAll(' ', '_');

    final BranchUniversalObject branchUniversalObject = BranchUniversalObject(
      canonicalIdentifier: '${StringConstants.listType}/$listId',
      title: listName,
      contentDescription: '$sharingTitle: $listName',
      contentMetadata:
          BranchContentMetaData()
            ..addCustomMetadata(StringConstants.type, StringConstants.listType)
            ..addCustomMetadata(StringConstants.listId, listId)
            ..addCustomMetadata(StringConstants.listName, listName),
    );

    final BranchLinkProperties branchLinkProperties = BranchLinkProperties(
      alias: alias,
      channel: StringConstants.shareChannel,
      feature: StringConstants.shareFeature,
      campaign: campaign,
      tags: [listNameTag, listId],
    );
    branchLinkProperties.addControlParam(StringConstants.fallbackUrl, webUrl);
    branchLinkProperties.addControlParam(StringConstants.desktopDeeplinkPath, webUrl);

    final BranchResponse response = await FlutterBranchSdk.showShareSheet(
      buo: branchUniversalObject,
      linkProperties: branchLinkProperties,
      messageText: messageText,
      androidMessageTitle: messageTitle,
      androidSharingTitle: sharingTitle,
    );

    if (response.success) {
      return true;
    } else {
      debugPrint('Error : ${response.errorCode} - ${response.errorMessage}');
      return false;
    }
  }
}
