import 'package:healthy_living_scan/src/ui/model/photo_capture_step.dart';

class PhotoPreviewUIModel {
  final PhotoCaptureStep currentStep;
  final List<String> frontPhotos;
  final List<String> ingredientsPhotos;
  final int selectedIndex;
  final int maxPhotos;

  const PhotoPreviewUIModel({
    required this.currentStep,
    required this.frontPhotos,
    required this.ingredientsPhotos,
    required this.maxPhotos,
    required this.selectedIndex,
  });
}
