import 'package:healthy_living/src/domain/models/deep_link_data_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NotificationDeepLinkMapper {
  static DeepLinkDataModel? fromNotificationData(Map<String, dynamic> data) {
    final url = data[StringConstants.urlType];
    if (url is! String || url.trim().isEmpty) return null;

    final uri = Uri.tryParse(url.trim());
    if (uri == null) return null;

    // 1. Handle app deep links (healthyliving://)
    if (uri.scheme == StringConstants.healthyLiving) {
      return _handleAppLink(uri);
    }

    // 2. Handle EWG web URLs (open WebView)
    if (_isEwgWebUrl(uri)) {
      return _webViewPayload(uri.toString());
    }

    // 3. Everything else -> do nothing
    return null;
  }

  static DeepLinkDataModel? _handleAppLink(Uri uri) {
    final host = uri.host; // category or 'list'
    final segments = uri.pathSegments;

    // healthyliving://list/123
    if (host == StringConstants.listType &&
        segments.length == 1 &&
        segments.first.isNotEmpty) {
      return DeepLinkDataModel(
        type: StringConstants.listType,
        data: {StringConstants.listId: segments.first},
      );
    }

    // healthyliving://{category}/product/123
    return _parseProductPath(host, segments);
  }

  static DeepLinkDataModel? _parseProductPath(
    String categoryHost,
    List<String> segments,
  ) {
    if (segments.length != 2) return null;
    if (segments.first != StringConstants.productType) return null;

    final productId = segments.last;

    final productCategory = ProductCategory.fromName(categoryHost);
    if (productCategory == null || productId.isEmpty) return null;

    return DeepLinkDataModel(
      type: StringConstants.productType,
      data: {
        StringConstants.productId: productId,
        StringConstants.productCategory: productCategory.name,
      },
    );
  }

  static bool _isEwgWebUrl(Uri uri) {
    if (!uri.isAbsolute || !(uri.scheme == 'https' || uri.scheme == 'http')) return false;
    if (uri.authority.isEmpty) return false;

    return true;
  }

  static DeepLinkDataModel _webViewPayload(String url) {
    return DeepLinkDataModel(
      type: StringConstants.urlType,
      data: {StringConstants.urlType: url},
    );
  }
}
