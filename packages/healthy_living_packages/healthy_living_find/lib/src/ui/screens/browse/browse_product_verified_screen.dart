import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_verified_collapsed_header_banner.dart';
import 'package:healthy_living_find/src/ui/widgets/shimmer/browse_verified_shimmer.dart';
import 'package:healthy_living_find/src/ui/widgets/verified_category_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductVerifiedScreen extends StatefulWidget {
  const BrowseProductVerifiedScreen({super.key});

  @override
  State<BrowseProductVerifiedScreen> createState() =>
      _BrowseProductVerifiedScreenState();
}

class _BrowseProductVerifiedScreenState
    extends State<BrowseProductVerifiedScreen> {
  late BrowseCategoriesBloc bloc;

  @override
  void initState() {
    super.initState();

    bloc = context.read<BrowseCategoriesBloc>();
    if (bloc.verifiedPersonalCare == null || bloc.verifiedCleaners == null) {
      bloc.add(BrowseCategoriesInitialize(isEwgVerified: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingFindLocalizations localizations =
        HealthyLivingFindLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: Column(
        children: [
          BrowseVerifiedCollapsedHeaderBanner(),
          Expanded(
            child: SingleChildScrollView(
              child: BlocBuilder<BrowseCategoriesBloc, BrowseCategoriesState>(
                buildWhen:
                    (prev, current) =>
                        current is BrowseCategoriesLoading ||
                        current is BrowseCategoriesFailure ||
                        current is BrowseCategoriesSuccess,
                builder: (context, state) {
                  if (bloc.verifiedPersonalCare == null ||
                      bloc.verifiedCleaners == null) {
                    return BrowseVerifiedShimmer();
                  }
                  if (state is BrowseCategoriesLoading) {
                    return BrowseVerifiedShimmer();
                  }

                  if (state is BrowseCategoriesFailure) {
                    return Center(
                      child: DSText(
                        text: localizations.find_browse_failedToLoadCategories,
                        textStyle: DSTextStyleType.primaryBodyMRegular,
                        textColor: context.dsColors.textNeutralOnWhite,
                      ),
                    );
                  }
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp400,
                      vertical: context.dsSpacing.sp600,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSText(
                          text: localizations.find_browse_ewgVerifiedByCategory,
                          textStyle: DSTextStyleType.secondaryHeadingM,
                          textColor: context.dsColors.textNeutralOnWhite,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),

                        if (bloc.sortedVerifiedPersonalCare.isValidList) ...[
                          DSText(
                            text: localizations.browse_personal_care_category,
                            textStyle: DSTextStyleType.primarySubHeadingM,
                            textColor: context.dsColors.textNeutralSecondary,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          GridView.builder(
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: context.dsSpacing.sp200,
                                  mainAxisSpacing: context.dsSpacing.sp200,
                                  childAspectRatio: 2.3,
                                ),
                            itemCount: bloc.sortedVerifiedPersonalCare!.length,
                            itemBuilder: (context, index) {
                              return VerifiedCategoryItem(
                                label:
                                    bloc
                                        .sortedVerifiedPersonalCare![index]
                                        .name ??
                                    "",
                                onTap: () {
                                  context.pushNamed(
                                    AppRoutes.browseCategoryScreen.name,
                                    extra: BrowseProductByCategoryParam(
                                      type:
                                          BrowseProductByCategoryType
                                              .personalCare,
                                      categoryGroupTitle:
                                          bloc
                                              .sortedVerifiedPersonalCare![index]
                                              .name ??
                                          "",
                                      categoryGroupId:
                                          bloc
                                              .sortedVerifiedPersonalCare![index]
                                              .id
                                              .toString(),
                                      isEWGVerified: true,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                        ],

                        if (bloc.sortedVerifiedCleaners.isValidList) ...[
                          DSText(
                            text: localizations.browse_cleaners_category,
                            textStyle: DSTextStyleType.primarySubHeadingM,
                            textColor: context.dsColors.textNeutralSecondary,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          GridView.builder(
                            padding: EdgeInsets.all(0),
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: context.dsSpacing.sp200,
                                  mainAxisSpacing: context.dsSpacing.sp200,
                                  childAspectRatio: 2.3,
                                ),
                            itemCount: bloc.sortedVerifiedCleaners!.length,
                            itemBuilder: (context, index) {
                              return VerifiedCategoryItem(
                                label:
                                    bloc.sortedVerifiedCleaners![index].name ??
                                    "",
                                onTap: () {
                                  context.pushNamed(
                                    AppRoutes.browseCategoryScreen.name,
                                    extra: BrowseProductByCategoryParam(
                                      type: BrowseProductByCategoryType.cleaner,
                                      categoryGroupTitle:
                                          bloc
                                              .sortedVerifiedCleaners![index]
                                              .name ??
                                          "",
                                      categoryGroupId:
                                          bloc.sortedVerifiedCleaners![index].id
                                              .toString(),
                                      isEWGVerified: true,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
