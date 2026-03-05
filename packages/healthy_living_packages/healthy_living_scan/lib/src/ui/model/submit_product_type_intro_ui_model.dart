import 'package:healthy_living_scan/src/ui/model/checklist_item_intro_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductTypeIntroUIModel {
  final String productTitle;
  final String titleImage;
  final List<ChecklistItemIntroUiModel>? checkList;
  final ProductCategory productCategoryType;
  final List<BrowseMainCategoryModel>? categories;
  final int? categoryGroupId;
  final String? upcCode;

  SubmitProductTypeIntroUIModel({
    required this.productTitle,
    required this.titleImage,
    required this.productCategoryType,
    this.upcCode,
    this.categories,
    this.checkList,
    this.categoryGroupId,
  });
}
