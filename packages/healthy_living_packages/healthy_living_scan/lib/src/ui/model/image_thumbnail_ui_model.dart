import 'dart:ui';

class ImageThumbnailUIModel {
  final List<String> photos;
  final int maxPhotos;
  final int selectedPhotoIndex;
  final Function(int) onPhotoTap;
  final Function(int) onRemovePhoto;
  final VoidCallback onAddPhoto;

  const ImageThumbnailUIModel({
    required this.photos,
    required this.maxPhotos,
    required this.selectedPhotoIndex,
    required this.onPhotoTap,
    required this.onRemovePhoto,
    required this.onAddPhoto,
  });
}
