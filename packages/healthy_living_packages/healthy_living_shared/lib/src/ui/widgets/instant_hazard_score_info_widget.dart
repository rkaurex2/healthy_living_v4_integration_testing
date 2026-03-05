import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class InstantHazardScoreInfoWidget extends StatefulWidget {
  const InstantHazardScoreInfoWidget({
    required this.title,
    required this.description,
    this.subTitle,
    super.key,
  });

  final String title;
  final String? subTitle;
  final String description;

  @override
  State<InstantHazardScoreInfoWidget> createState() =>
      _InstantHazardScoreInfoWidgetState();
}

class _InstantHazardScoreInfoWidgetState
    extends State<InstantHazardScoreInfoWidget>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: context.dsColors.strokeNeutralDisabled),
        borderRadius: BorderRadius.circular(context.dsRadius.rd300),
      ),
      margin: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
      padding: EdgeInsets.all(context.dsSpacing.sp300),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: DSText(
                      text: widget.title,
                      textStyle: DSTextStyleType.primaryBodySMedium,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp200,
                      ),
                      RotatedBox(
                        quarterTurns: _isExpanded ? 2 : 0,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: 2.17,
                            left: 2.17,
                            right: 2.17,
                          ),
                          child: DSImage.asset(
                            DSIcons.icChevronDownThin,
                            height: context.dsSizes.sz400,
                            width: context.dsSizes.sz400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (_isExpanded) ...[
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
              if (widget.subTitle.isValidValue) ...[
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                DSText(
                  text: widget.subTitle,
                  textStyle: DSTextStyleType.primaryBodySMedium,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
              ],
              DSText(
                text: widget.description,
                textStyle: DSTextStyleType.primaryBodySRegular,
                textColor: context.dsColors.textNeutralSecondary,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
