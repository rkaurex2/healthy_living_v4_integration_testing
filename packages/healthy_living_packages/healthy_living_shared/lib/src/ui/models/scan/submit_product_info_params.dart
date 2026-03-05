import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'submit_product_info_params.freezed.dart';

@freezed
sealed class SubmitProductInfoParams with _$SubmitProductInfoParams {
  const factory SubmitProductInfoParams({
    required ProductCategory productCategoryType,
    required String productName,
    required String brandName,
    required String ingredients,
    List<int>? imageIds,
    BrowseMainCategoryModel? groupCategoryModel,
    Map<String, List<String>>? photosByRole,
    int? productFormIndex,
    String? categoryGroupName,
    String? categoryName,
    String? subCategoryName,
    String? productForm,
    String? unitValue,
    String? weightValue,
    String? productUsage,
    String? ingredientText,
    String? submissionId,
    String? uuid,
    String? sunscreenSpfValue,
    bool? useOnDamagedSkin,
    String? jobId,
    OcrProvisionalScoreResponseDTO? provisionalScoreResponse,
    List<ActiveIngredientRequestModel>? activeIngredient,
    bool? finalUserEditsSubmit,
    bool? isInstantScoreHazardProduct,
  }) = _SubmitProductInfoParams;
}
