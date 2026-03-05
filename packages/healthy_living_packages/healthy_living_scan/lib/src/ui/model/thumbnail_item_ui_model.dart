import 'dart:ui';

import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';

class ThumbnailItemUIModel {
  final String photoPath;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;
  final VoidCallback onRemove;
  final PictureUploadStatus? uploadStatus;

  const ThumbnailItemUIModel({
    required this.photoPath,
    required this.index,
    required this.isSelected,
    required this.onTap,
    required this.onRemove,
    this.uploadStatus,
  });
}
