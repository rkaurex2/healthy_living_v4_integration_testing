import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/ui/model/picture_upload_status.dart';
import 'package:healthy_living_scan/src/ui/model/thumbnail_item_ui_model.dart';

class ThumbnailItemWidget extends StatelessWidget {
  final ThumbnailItemUIModel thumbnailItemUIModel;

  const ThumbnailItemWidget({required this.thumbnailItemUIModel, super.key});

  @override
  Widget build(BuildContext context) {
    const double imageSize = 104;
    double paddingForIcon = context.dsSpacing.sp300;
    final isUploading =
        thumbnailItemUIModel.uploadStatus == PictureUploadStatus.uploading;
    final isUploaded =
        thumbnailItemUIModel.uploadStatus == PictureUploadStatus.uploaded;
    final isFailed =
        thumbnailItemUIModel.uploadStatus == PictureUploadStatus.failed;
    return SizedBox(
      width: imageSize + paddingForIcon,
      height: imageSize + paddingForIcon,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: thumbnailItemUIModel.onTap,
              child: Container(
                width: imageSize,
                height: imageSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(context.dsRadius.rd300),
                  border: Border.all(
                    color:
                        thumbnailItemUIModel.isSelected
                            ? context.dsColors.strokePrimaryDefault
                            : context.dsColors.strokeNeutralDefault,
                    width: thumbnailItemUIModel.isSelected ? 2 : 1,
                  ),
                  image: DecorationImage(
                    image: FileImage(File(thumbnailItemUIModel.photoPath)),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          if (isUploaded)
          Positioned(
            top: 0,
            right: 0,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                thumbnailItemUIModel.onRemove();
              },
              child: Container(
                padding: EdgeInsets.all(context.dsSpacing.sp100),
                child: DSImage.asset(
                  DSIcons.icMinusCircle,
                  width: context.dsSizes.sz500,
                  height: context.dsSizes.sz500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
