import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/src/domain/models/certifications_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CertificationTile extends StatelessWidget {
  final CertificationsModel certificationsModel;

  const CertificationTile({required this.certificationsModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: context.dsSizes.sz900,
          child: DSImage.network(
            certificationsModel.logoUrl,
            fit: BoxFit.contain,
            width: context.dsSizes.sz900,
            errorWidget: PlaceholderImage(
              containerSize: context.dsSizes.sz900,
              imageSize: context.dsSizes.sz900,
            ),
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        DSText(
          text: certificationsModel.name,
          textStyle: DSTextStyleType.primaryCaption,
          textColor: context.dsColors.textNeutralSecondary,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ],
    );
  }
}
