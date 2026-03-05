import 'dart:ui';

import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';

class ThumbnailContentUIModel {
  final List<String> photos;
  final int photoIndex;
  final int maxPhotos;
  final int selectedPhotoIndex;
  final Function(int) onPhotoTap;
  final Function(int) onRemovePhoto;
  final VoidCallback onAddPhoto;
  final Map<String, PictureUploadStatus>? photoUploadStatus;
  final bool canAddMore;

  const ThumbnailContentUIModel({
    required this.photos,
    required this.photoIndex,
    required this.maxPhotos,
    required this.selectedPhotoIndex,
    required this.onPhotoTap,
    required this.onRemovePhoto,
    required this.onAddPhoto,
    required this.canAddMore,
    this.photoUploadStatus,
  });
}
