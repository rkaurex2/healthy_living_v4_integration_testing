import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/ui/model/image_thumbnail_ui_model.dart';
import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';
import 'package:healthy_living_scan/src/ui/model/thumbnail_content_ui_model.dart';
import 'package:healthy_living_scan/src/ui/widgets/thumbnail_content_widget.dart';

class ImageThumbnailWidget extends StatelessWidget {
  final ImageThumbnailUIModel imageThumbnailUIModel;
  final Map<String, PictureUploadStatus>? photoUploadStatus;
  final bool canAddMore;

  const ImageThumbnailWidget({
    required this.imageThumbnailUIModel,
    required this.canAddMore,
    required this.photoUploadStatus,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ThumbnailContentWidget(
          contentUIModel: ThumbnailContentUIModel(
            photoIndex: 0,
            photos: imageThumbnailUIModel.photos,
            maxPhotos: imageThumbnailUIModel.maxPhotos,
            selectedPhotoIndex: imageThumbnailUIModel.selectedPhotoIndex,
            onPhotoTap: imageThumbnailUIModel.onPhotoTap,
            onRemovePhoto: imageThumbnailUIModel.onRemovePhoto,
            onAddPhoto: imageThumbnailUIModel.onAddPhoto,
            photoUploadStatus: photoUploadStatus,
            canAddMore: canAddMore,
          ),
        ),
        SizedBox(width: context.dsSpacing.sp400),
        ThumbnailContentWidget(
          contentUIModel: ThumbnailContentUIModel(
            photoIndex: 1,
            photos: imageThumbnailUIModel.photos,
            maxPhotos: imageThumbnailUIModel.maxPhotos,
            selectedPhotoIndex: imageThumbnailUIModel.selectedPhotoIndex,
            onPhotoTap: imageThumbnailUIModel.onPhotoTap,
            onRemovePhoto: imageThumbnailUIModel.onRemovePhoto,
            onAddPhoto: imageThumbnailUIModel.onAddPhoto,
            photoUploadStatus: photoUploadStatus,
            canAddMore: canAddMore,
          ),
        ),
      ],
    );
  }
}