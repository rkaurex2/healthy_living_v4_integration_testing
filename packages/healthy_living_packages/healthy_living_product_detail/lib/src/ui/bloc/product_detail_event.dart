import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show ProductDetailParamModel;

part 'product_detail_event.freezed.dart';

@freezed
sealed class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.initialized({
    required ProductDetailParamModel product,
    required bool isAuthenticated,
    required bool isPremiumUser,
  }) = ProductDetailInitialized;

  const factory ProductDetailEvent.share({
    required String messageText,
    required String messageTitle,
    required String sharingTitle,
  }) = ProductDetailShare;

  const factory ProductDetailEvent.tabChanged(ProductDetailTab tab) =
      TabChanged;
  const factory ProductDetailEvent.onPressCompare() = OnPressCompare;
  const factory ProductDetailEvent.onCloseCompare() = OnCloseCompare;
}
