import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_commons/google_mlkit_commons.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:image_picker/image_picker.dart';
import 'package:camera/camera.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({
    required this.title,
    required this.onImage,
    required this.onDetectorViewModeChanged,
    super.key,
    this.text,
  });

  final String title;
  final String? text;
  final Function(InputImage inputImage, CameraImage? cameraImage) onImage;
  final Function()? onDetectorViewModeChanged;

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HeaderWithTitle(title: widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: widget.onDetectorViewModeChanged,
              child: Icon(
                Icons.camera_alt,
                color: context.dsColors.iconPrimary,
                size: context.dsSizes.sz500,
              ),
            ),
          ),
        ],
      ),
      body: _galleryBody(),
    );
  }

  Widget _galleryBody() {
    return ListView(shrinkWrap: true, children: [_imageFromGalleryBody()]);
  }

  Widget _imageFromGalleryBody() {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: context.dsSizes.sz400),
        child: ElevatedButton(
          onPressed: () => _getImage(ImageSource.gallery),
          child: DSText(
            text: localization.barcodeScanner_galleryScreen_fromGallery,
            textStyle: DSTextStyleType.primaryHeadingS,
            textColor: context.dsColors.textPrimaryDefault,
          ),
        ),
      ),
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      final inputImage = InputImage.fromFilePath(pickedFile.path);
      widget.onImage(inputImage, null);
    }
  }
}
