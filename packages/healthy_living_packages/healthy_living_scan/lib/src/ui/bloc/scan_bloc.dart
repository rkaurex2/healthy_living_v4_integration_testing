import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_event.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_state.dart';
import 'package:healthy_living_scan/src/ui/camera/utils/healthy_living_scan_key_value_constant.dart';

import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:storage/storage.dart';

@Injectable()
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc({
    required SessionRepository sessionRepository,
    required SearchRepository searchRepository,
    required ScanAnalytics scanAnalytics,
    required KeyValueStorage keyValueStorage,
  }) : _sessionRepository = sessionRepository,
       _searchRepository = searchRepository,
       _scanAnalytics = scanAnalytics,
       _keyValueStorage = keyValueStorage,
       super(const ScanState.initial()) {
    on<ScanInitialized>(_onScanInitialized);
    on<ScanCompareDataInitialized>(_onScanCompareDataInitialized);
    on<ScanProductSearched>(_onScanProductSearched);
    on<ScanProductShare>(_onScanProductShare);
    on<ScanCheckIntroDialogStatus>(_onScanCheckIntroDialogStatus);
    on<ScanMarkIntroDialogSeen>(_onScanMarkIntroDialogSeen);
    on<ScanToggleTorch>(_onScanToggleTorch);
    on<AddProductToCompare>(_onAddProductToCompare);
    on<RemoveCompareProduct>(_onRemoveCompareProduct);
    on<ResumeScanProduct>(_onResumeScanProduct);
  }

  final KeyValueStorage _keyValueStorage;
  final SessionRepository _sessionRepository;
  final SearchRepository _searchRepository;
  final ScanAnalytics _scanAnalytics;
  CompareProductItem? _defaultCompareProductItem;

  CompareProductItem? get defaultCompareProductItem =>
      _defaultCompareProductItem;
  final List<CompareProductItem> _compareList = [];

  List<CompareProductItem> get compareList => _compareList;
  bool _isAuthenticated = false;
  GeneralProductListItemUIModel? _productBasicDetail;

  bool get isAuthenticated => _isAuthenticated;

  void _onResumeScanProduct(
    ResumeScanProduct event,
    Emitter<ScanState> emit,
  ) async {
    await Future.delayed(Duration(seconds: 1));
    emit(ScanState.resumedScanProduct());
  }

  Future<void> _onScanCompareDataInitialized(
    ScanCompareDataInitialized event,
    Emitter<ScanState> emit,
  ) async {
    _defaultCompareProductItem = event.compareProductItem;
    _compareList.add(event.compareProductItem);
    emit(
      ScanState.defaultCompareProductAdded(
        compareProductItem: event.compareProductItem,
      ),
    );
  }

  void _onAddProductToCompare(
    AddProductToCompare event,
    Emitter<ScanState> emit,
  ) {
    _compareList.add(event.compareProductItem);
    emit(
      ScanState.productCompareAdded(
        compareProductItem: event.compareProductItem,
      ),
    );
  }

  void _onRemoveCompareProduct(
    RemoveCompareProduct event,
    Emitter<ScanState> emit,
  ) {
    _compareList.removeWhere(
      (element) => element.id == event.compareProductItem.id,
    );
    emit(
      ScanState.onRemovedCompareProduct(
        index: event.index,
        compareProductItem: event.compareProductItem,
      ),
    );
  }

  Future<void> _onScanInitialized(
    ScanInitialized event,
    Emitter<ScanState> emit,
  ) async {
    _isAuthenticated = await _sessionRepository.getIsAuthenticated() ?? false;
    emit(ScanState.initial());
  }

  Future<void> _onScanProductSearched(
    ScanProductSearched event,
    Emitter<ScanState> emit,
  ) async {
    try {
      emit(ScanState.scanProductSearchInProgress());

      /// Logs GA4 search event
      await _scanAnalytics.logBarcodeSearch(searchTerm: event.upcCode);

      final response = await _searchRepository.searchProductByBarcode(
        searchByBarcodeRequest: SearchByBarcodeRequest(upcCode: event.upcCode),
      );
      if (response.isSuccess) {
        _productBasicDetail = response.data;
        emit(ScanState.scanProductSearchSuccess(productDetail: response.data));

        if(_productBasicDetail != null) {
          await _scanAnalytics.logBarcodeSearchResult(
            searchTerm: event.upcCode,
            resultCount: 1,
            product: _productBasicDetail!,
          );
        }
      } else {
        _productBasicDetail = null;

        /// ✅ GA4: scan failed (exception)
        await _scanAnalytics.logScanFail(
          searchTerm: event.upcCode,
          reason: AnalyticsParameters.apiFailure,
        );

        emit(
          ScanState.scanProductSearchFailure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (e) {
      _productBasicDetail = null;

      /// ✅ GA4: scan failed (exception)
      await _scanAnalytics.logScanFail(
        searchTerm: event.upcCode,
        reason: AnalyticsParameters.exception,
      );

      emit(ScanState.scanProductSearchFailure(e));
    }
  }

  Future<void> _onScanProductShare(
    ScanProductShare event,
    Emitter<ScanState> emit,
  ) async {
    if (_productBasicDetail != null) {
      ProductCategory? category = ProductCategory.fromName(
        _productBasicDetail!.productType,
      );
      final productRequest = DeepLinkProductRequest(
        productId: _productBasicDetail!.productId.toString(),
        productName: _productBasicDetail!.productName,
        photoUrl: _productBasicDetail!.imageUrl,
        category: category ?? ProductCategory.food,
        isVerified: _productBasicDetail!.isEWGVerified,
      );

      final deepLinkService = injector.get<DeepLinkHandler>();
      await deepLinkService.shareProductLink(
        productRequest,
        messageText: event.messageText,
        messageTitle: event.messageTitle,
        sharingTitle: event.sharingTitle,
      );
    }
  }

  Future<void> _onScanCheckIntroDialogStatus(
    ScanCheckIntroDialogStatus event,
    Emitter<ScanState> emit,
  ) async {
    final hasSeen =
        await _keyValueStorage.getBool(
          HealthyLivingScanKeyValueConstant.hasSeenBarcodeIntoKey,
        ) ??
        false;
    if (hasSeen) {
      emit(ScanIntroDialogHide());
    } else {
      emit(ScanIntroDialogShow());
    }
  }

  Future<void> _onScanMarkIntroDialogSeen(
    ScanMarkIntroDialogSeen event,
    Emitter<ScanState> emit,
  ) async {
    await _keyValueStorage.setBool(
      HealthyLivingScanKeyValueConstant.hasSeenBarcodeIntoKey,
      true,
    );
    emit(ScanIntroDialogHide());
  }

  void _onScanToggleTorch(ScanToggleTorch event, Emitter<ScanState> emit) {
    emit(ScanState.toggledTorch(isTorchOn: event.isTorchOn));
  }
}
