import 'package:healthy_living_shared/src/domain/data_source/deep_link_remote_data_source.dart';
import 'package:healthy_living_shared/src/domain/models/deep_link_product_request.dart';
import 'package:healthy_living_shared/src/domain/repository/deep_link_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DeepLinkRepository)
class DefaultDeepLinkRepository implements DeepLinkRepository {
  final DeepLinkRemoteDataSource _deeplinkRemoteDataSource;
  static DefaultDeepLinkRepository? _instance;

  DefaultDeepLinkRepository._internal(this._deeplinkRemoteDataSource);

  @factoryMethod
  factory DefaultDeepLinkRepository({
    required DeepLinkRemoteDataSource localDataSource,
  }) {
    _instance ??= DefaultDeepLinkRepository._internal(localDataSource);
    return _instance!;
  }

  @override
  Future<bool> getProductDeeplink(
    DeepLinkProductRequest productRequest, {
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) async {
    return await _deeplinkRemoteDataSource.getProductDeeplink(
      productRequest,
      messageTitle: messageTitle,
      messageText: messageText,
      sharingTitle: sharingTitle,
    );
  }

  @override
  Future<bool> getMyListDeeplink({
    required String listId,
    required String listName,
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) async {
    return await _deeplinkRemoteDataSource.getMyListDeeplink(
      listId: listId,
      listName: listName,
      messageText: messageText,
      messageTitle: messageTitle,
      sharingTitle: sharingTitle,
    );
  }
}
