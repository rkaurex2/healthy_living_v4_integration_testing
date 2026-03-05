import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/widgets/gradient_grid_section_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class GradientGridSection extends StatelessWidget {
  final String title;
  final String titleImage;
  final List<Color>? gradientColors;
  final List<double>? gradientStops;
  final VoidCallback? onPressed;
  final double? imageHeight;
  final double? imageWidth;
  final BrowseProductByCategoryParams params;

  const GradientGridSection({
    required this.title,
    required this.titleImage,
    required this.params,
    super.key,
    this.gradientColors,
    this.gradientStops,
    this.onPressed,
    this.imageHeight,
    this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingFindLocalizations.of(context)!;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors:
              gradientColors ??
              [
                context.dsColors.surfaceAdditionalBlush100,
                context.dsColors.surfaceCategoriesCleaners,
              ],
          stops: gradientStops ?? [0.0, 1.0],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientGridSectionHeader(
            title: title,
            onPressed: onPressed,
            titleImage: titleImage,
            imageHeight: imageHeight,
            imageWidth: imageWidth,
          ),
          // KEY: TestKeys.categoryGrid
          GridView.count(
            key: const Key('category_grid'),
            crossAxisCount: 2,
            mainAxisSpacing: context.dsSpacing.sp200,
            crossAxisSpacing: context.dsSpacing.sp200,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            childAspectRatio: 2.3,
            children:
                params.categories!.map((item) {
                  return CategoryTile(
                    text: item.name?.toSmartTitleCase() ?? "",
                    onTap: () {
                      context.pushNamed(
                        AppRoutes.browseCategoryScreen.name,
                        extra: BrowseProductByCategoryParam(
                          type: params.type,
                          categoryGroupTitle: item.name?.toSmartTitleCase() ?? '',
                          categoryGroupId: item.id.toString(),
                        ),
                      );
                    },
                  );
                }).toList(),
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
          if (title == localization.browse_food_category) ...{
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          },
        ],
      ),
    );
  }
}
