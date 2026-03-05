import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/analytics/product_submission_analytics.dart';
import 'package:healthy_living_scan/src/ui/widgets/shimmer/category_shimmer.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

class SubmitProductCategorySelectionContentScreen extends StatefulWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmitProductCategorySelectionContentScreen({
    required this.infoUIModel,
    super.key,
  });

  @override
  State<SubmitProductCategorySelectionContentScreen> createState() =>
      _SubmitProductCategorySelectionContentScreenState();
}

class _SubmitProductCategorySelectionContentScreenState
    extends State<SubmitProductCategorySelectionContentScreen> {
  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final BrowseCategoriesBloc bloc = context.read<BrowseCategoriesBloc>();

    return BlocConsumer<BrowseCategoriesBloc, BrowseCategoriesState>(
      listener: (context, state) {
        if (state is BrowseInternetFailure) {
          final errorMessage = HealthyLivingSharedUtils.getServerErrorMessage(
            localizations: HealthyLivingSharedLocalizations.of(context)!,
            exception: state.exception,
          );
          DSToast.show(context: context, title: errorMessage);
        } else if (state is BrowseCategoriesFailure) {
          if (state.exception is UnknownNetworkException) {
            DSToast.show(
              context: context,
              title: localization.submitProduct_info_failedToLoadCategories,
            );
          }
        }
      },
      listenWhen:
          (_, current) =>
              current is BrowseCategoriesFailure ||
              current is BrowseInternetFailure,

      buildWhen:
          (previous, current) =>
              current is BrowseCategoriesLoading ||
              current is BrowseCategoriesSuccess,

      builder: (context, state) {
        if (state is BrowseCategoriesLoading) {
          return CategoryShimmer();
        }

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: context.dsSpacing.sp400,
              right: context.dsSpacing.sp400,
              bottom: context.dsSpacing.sp400,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DSText(
                  text: _getTitle(localization),
                  textStyle: DSTextStyleType.primaryHeadingS,
                  textColor: context.dsColors.textNeutralOnWhite,
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                DSText(
                  text:
                      widget.infoUIModel.productCategoryType ==
                              ProductCategory.personalCare
                          ? localization
                              .submitProduct_info_selectTheCategoryGroup
                          : localization
                              .submitProduct_info_selectTheSubcategory,
                  textStyle: DSTextStyleType.primaryBodySRegular,
                  textColor: context.dsColors.textNeutralSecondary,
                  lineHeight: 1.5,
                ),
                DSSpacingWidget.vertical(spacing: 20),

                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: context.dsSpacing.sp200,
                  crossAxisSpacing: context.dsSpacing.sp200,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  childAspectRatio: 2.3,
                  children:
                      _categoryList(bloc).map((item) {
                        return CategoryTile(
                          text: item.name?.toSmartTitleCase() ?? "",
                          onTap: () async {
                            await injector
                                .get<ProductSubmissionAnalytics>()
                                .logSubmitAddDetails(
                                  submissionId:
                                      widget.infoUIModel.submissionId ?? "",
                                  productCategory:
                                      widget
                                          .infoUIModel
                                          .productCategoryType
                                          .name,
                                  addDetailScreen: _getTitle(localization),
                                );
                            if (!context.mounted) return;

                            if (widget.infoUIModel.productCategoryType ==
                                    ProductCategory.personalCare ||
                                widget.infoUIModel.productCategoryType ==
                                    ProductCategory.food) {
                              final updateInfoUIModel = widget.infoUIModel
                                  .copyWith(
                                    groupCategoryModel: item,
                                    categoryGroupName: item.name,
                                  );
                              await context.pushNamed(
                                AppRoutes.pcpSubCategorySelectionScreen.name,
                                extra: updateInfoUIModel,
                              );
                            } else if (widget.infoUIModel.productCategoryType ==
                                ProductCategory.sunscreen) {
                              final updateInfoUIModel = widget.infoUIModel
                                  .copyWith(categoryGroupName: item.name);
                              await context.pushNamed(
                                AppRoutes.sunscreenDetailInfoScreen.name,
                                extra: updateInfoUIModel,
                              );
                            } else if (widget.infoUIModel.productCategoryType ==
                                ProductCategory.cleaner) {
                              final updateInfoUIModel = widget.infoUIModel
                                  .copyWith(categoryGroupName: item.name);
                              await context.pushNamed(
                                AppRoutes
                                    .submitProductsAdditionalInfoScreen
                                    .name,
                                extra: updateInfoUIModel,
                              );
                            }
                          },
                          tileColor:
                              context.dsColors.surfaceNeutralBackgroundLight,
                        );
                      }).toList(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String _getTitle(HealthyLivingScanLocalizations localization) {
    if (widget.infoUIModel.productCategoryType ==
        ProductCategory.personalCare) {
      return localization.submitProduct_info_personalCare;
    } else if (widget.infoUIModel.productCategoryType ==
        ProductCategory.sunscreen) {
      return localization.submitProduct_info_sunscreens;
    } else if (widget.infoUIModel.productCategoryType ==
        ProductCategory.cleaner) {
      return localization.submitProduct_info_cleaners;
    } else if (widget.infoUIModel.productCategoryType == ProductCategory.food) {
      return localization.submitProduct_info_food;
    } else {
      return "";
    }
  }

  List<BrowseMainCategoryModel> _categoryList(BrowseCategoriesBloc bloc) {
    if (widget.infoUIModel.productCategoryType ==
        ProductCategory.personalCare) {
      return bloc.personalCare ?? [];
    } else if (widget.infoUIModel.productCategoryType ==
        ProductCategory.sunscreen) {
      return SubmitProductUtils.getSunscreenSubCategories;
    } else if (widget.infoUIModel.productCategoryType ==
        ProductCategory.cleaner) {
      return bloc.cleaners ?? [];
    } else if (widget.infoUIModel.productCategoryType == ProductCategory.food) {
      return bloc.food ?? [];
    } else {
      return [];
    }
  }
}
