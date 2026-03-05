import 'package:camera/camera.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';

class CameraUIModel {
  final List<CameraDescription> cameras;
  final SubmitProductTypeIntroUIModel introUIModel;

  const CameraUIModel({
    required this.introUIModel,
    required this.cameras,
  });
}
