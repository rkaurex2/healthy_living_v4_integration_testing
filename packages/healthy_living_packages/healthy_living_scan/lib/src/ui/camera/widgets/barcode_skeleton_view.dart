import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BarcodeSkeletonView extends StatelessWidget {
  final VoidCallback onClose;

  const BarcodeSkeletonView({
    required this.onClose, super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: context.dsSpacing.sp400,
        right: context.dsSpacing.sp400,
        bottom: context.dsSpacing.sp400,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp100,
              vertical: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onClose,
                  child: DSImage.asset(
                    DSIcons.icClose,
                    color: context.dsColors.iconPrimary,
                    width: context.dsSizes.sz500,
                    height: context.dsSizes.sz500,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                RoundedRectangleShimmerWidget(height: 100, width: 100),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp400),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RoundedRectangleShimmerWidget(height: context.dsSizes.sz400, width: 80),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp100,
                      ),
                      RoundedRectangleShimmerWidget(height: context.dsSizes.sz400, width: 100),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp400,
                      ),
                      RoundedRectangleShimmerWidget(height: context.dsSizes.sz400, width: 80),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
