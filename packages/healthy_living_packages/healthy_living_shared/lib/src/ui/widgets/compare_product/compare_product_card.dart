import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CompareProductCard extends StatefulWidget {
  final String imageUrl;
  final String brand;
  final String title;
  final String? score;
  final bool isEWGVerified;
  final bool isDisableDefaultItem;
  final VoidCallback onRemove;

  const CompareProductCard({
    required this.imageUrl,
    required this.brand,
    required this.title,
    required this.onRemove,
    this.score,
    this.isEWGVerified = false,
    this.isDisableDefaultItem = false,
    super.key,
  });

  @override
  State<CompareProductCard> createState() => _CompareProductCardState();
}

class _CompareProductCardState extends State<CompareProductCard> {
  bool _isImageLoading = true;

  @override
  Widget build(BuildContext context) {
    final productHazardLevel = widget.score?.ratingHazardLevel;
    // KEY: TestKeys.compareProductCard
    return Stack(
      key: const Key('compare_product_card'),
      children: [
        Container(
          padding: EdgeInsets.all(context.dsSpacing.sp200),
          margin: EdgeInsets.all(context.dsSpacing.sp100),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  if (_isImageLoading)
                    RoundedRectangleShimmerWidget(
                      height: context.dsSizes.sz1000,
                      width: context.dsSizes.sz1000,
                    ),
                  SizedBox(
                    height: context.dsSizes.sz1000,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        context.dsRadius.rd200,
                      ),
                      child: DSImage.network(
                        widget.imageUrl,
                        width: context.dsSizes.sz1000,
                        fit: BoxFit.contain,
                        frameBuilder: (context, child, frame, _) {
                          if (frame != null && _isImageLoading) {
                            Future.microtask(() {
                              if (mounted) {
                                setState(() => _isImageLoading = false);
                              }
                            });
                          }
                          return child;
                        },
                        errorBuilder: (context, error, stackTrace) {
                          if (_isImageLoading && mounted) {
                            Future.microtask(() {
                              if (mounted) {
                                setState(() => _isImageLoading = false);
                              }
                            });
                          }
                          return PlaceholderImage(
                            containerSize: context.dsSizes.sz1000,
                            imageSize: 42,
                          );
                        },
                      ),
                    ),
                  ),

                  if (!_isImageLoading)
                    Positioned(
                      left: 10,
                      top: 8,
                      child:
                          widget.isEWGVerified ||
                                  productHazardLevel == HazardLevel.verified
                              ? DSImage.asset(
                                DSIcons.icEWGVerified,
                                width: 23,
                                height: 23,
                              )
                              : SizedBox(
                                width: context.dsSizes.sz500,
                                height: context.dsSizes.sz500,
                                child: ScoreBadgeLabelWithData(
                                  score: widget.score!,
                                  scoreBackgroundColor:
                                      widget.score?.ratingHazardLevel
                                          ?.displayColor(context) ??
                                      Colors.transparent,
                                ),
                              ),
                    ),
                ],
              ),
              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              _isImageLoading
                  ? Expanded(
                    child: Column(
                      spacing: 2,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp100,
                        ),
                        ...List.generate(
                          4,
                          (_) => const RoundedRectangleShimmerWidget(
                            height: 10,
                            borderRadius: 0,
                          ),
                        ),
                      ],
                    ),
                  )
                  : Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSText(
                          text: widget.brand,
                          textStyle: DSTextStyleType.primaryCaption,
                          textColor: context.dsColors.textNeutralSecondary,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        DSSpacingWidget.vertical(spacing: 2),
                        SearchResultHighlightTextWidget(
                          text: widget.title,
                          textStyle: DSTextStyleType.primaryCaptionSemibold
                              .getTextStyle()
                              .copyWith(
                                color: context.dsColors.textPrimaryDefault,
                              ),
                          textStyleHighlight: DSTextStyleType
                              .primaryCaptionSemibold
                              .getTextStyle()
                              .copyWith(
                                color: context.dsColors.textPrimaryDefault,
                              ),
                          maxLines: widget.brand.isValidValue ? 3 : 4,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ),
        if (!widget.isDisableDefaultItem) ...{
          Positioned(
            right: 0,
            child: GestureDetector(
              onTap: widget.onRemove,
              behavior: HitTestBehavior.opaque,
              child: Container(
                width: 20,
                height: 20,
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.dsColors.surfaceNeutralContainerWhite,
                  border: Border.all(
                    color: context.dsColors.iconNeutralDefault,
                    width: 1.0,
                  ),
                ),
                child: DSImage.asset(
                  DSIcons.icMinus,
                  color: context.dsColors.iconPrimary,
                ),
              ),
            ),
          ),
        },
      ],
    );
  }
}
