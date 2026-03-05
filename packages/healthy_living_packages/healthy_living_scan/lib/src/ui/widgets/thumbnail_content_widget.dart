import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/ui/model/thumbnail_content_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/thumbnail_item_ui_model.dart';
import 'package:healthy_living_scan/src/ui/widgets/thumbnail_add_photo_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/thumbnail_empty_slot_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/thumbnail_item_widget.dart';

class ThumbnailContentWidget extends StatelessWidget {
  final ThumbnailContentUIModel contentUIModel;

  const ThumbnailContentWidget({required this.contentUIModel, super.key});

  @override
  Widget build(BuildContext context) {
    if (contentUIModel.photoIndex < contentUIModel.photos.length) {
      final photoPath = contentUIModel.photos[contentUIModel.photoIndex];
      final uploadStatus = contentUIModel.photoUploadStatus?[photoPath];

      return ThumbnailItemWidget(
        thumbnailItemUIModel: ThumbnailItemUIModel(
          photoPath: photoPath,
          index: contentUIModel.photoIndex,
          isSelected:
          contentUIModel.selectedPhotoIndex == contentUIModel.photoIndex,
          onTap: () => contentUIModel.onPhotoTap(contentUIModel.photoIndex),
          onRemove:
              () => contentUIModel.onRemovePhoto(contentUIModel.photoIndex),
          uploadStatus: uploadStatus,
        ),
      );
    }
    if (contentUIModel.photoIndex == contentUIModel.photos.length &&
        contentUIModel.canAddMore) {
      return ThumbnailAddPhotoWidget(onTap: contentUIModel.onAddPhoto);
    }
    return const ThumbnailEmptySlotWidget();
  }
}