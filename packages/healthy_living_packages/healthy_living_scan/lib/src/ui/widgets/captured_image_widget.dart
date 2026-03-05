import 'package:design_system/design_system.dart';
import 'package:healthy_living_scan/src/ui/widgets/captured_image_item_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class CapturedImageWidget extends StatelessWidget {
  final List<String> capturedImagesList;
  final String title;
  final String label;

  const CapturedImageWidget({
    required this.capturedImagesList,
    required this.title,
    required this.label,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return capturedImagesList.isValidList
        ? Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DSText(
              text: title,
              textStyle: DSTextStyleType.primarySubheadingXs,
              textColor: context.dsColors.textNeutralOnWhite,
              lineHeight: 1.5,
            ),
            DSText(
              text: label,
              textStyle: DSTextStyleType.primaryBodySRegular,
              textColor: context.dsColors.textNeutralSecondary,
              lineHeight: 1.5,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            SizedBox(
              height: 104,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return CapturedImageItemWidget(
                    capturedImage: capturedImagesList[index],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return DSSpacingWidget.horizontal(
                    spacing: context.dsSpacing.sp400,
                  );
                },
                itemCount: capturedImagesList.length,
              ),
            ),
          ],
        )
        : SizedBox.shrink();
  }
}
