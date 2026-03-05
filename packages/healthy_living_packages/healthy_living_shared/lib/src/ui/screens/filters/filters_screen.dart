import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show ProductCategory;
import 'package:healthy_living_shared/src/core/di/injector.dart';
import 'package:healthy_living_shared/src/domain/models/brand_aggs/brand_aggregation_model.dart';
import 'package:healthy_living_shared/src/domain/models/category_aggs/category_aggregation_model.dart';
import 'package:healthy_living_shared/src/ui/bloc/app_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/filter/filter_bloc.dart'
    show FilterBloc;
import 'package:healthy_living_shared/src/ui/bloc/filter/filter_events.dart';
import 'package:healthy_living_shared/src/ui/models/filters/filter_opened_from.dart';
import 'package:healthy_living_shared/src/ui/models/filters/product_filters_model.dart';
import 'package:healthy_living_shared/src/ui/screens/filters/filters_content_screen.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({
    required this.productCategory,
    required this.categoryAggregations,
    required this.brandAggregations,
    required this.filterOpenedFrom,
    required this.onManagePreferencesTap,
    required this.onTapLearnPremium,
    this.initialFilters,
    this.initialSelectedCategoryId,
    this.initialSelectedBrandId,
    this.initialSelectedSubCategoryId,
    this.isEWGVerifiedSearch,
    super.key,
  });

  final ProductCategory productCategory;
  final ProductFiltersModel? initialFilters;
  final List<CategoryAggregationModel> categoryAggregations;
  final List<BrandAggregationModel> brandAggregations;
  final int? initialSelectedCategoryId;
  final int? initialSelectedSubCategoryId;
  final int? initialSelectedBrandId;
  final bool? isEWGVerifiedSearch;
  final FilterOpenedFrom filterOpenedFrom;
  final VoidCallback onManagePreferencesTap;
  final VoidCallback onTapLearnPremium;
  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    return BlocProvider(
      create:
          (_) =>
              injector.get<FilterBloc>()..add(
                FilterEvent.initialized(
                  productCategory: productCategory,
                  initialFilters: initialFilters,
                  categoryAggregations: categoryAggregations,
                  brandAggregations: brandAggregations,
                  initialSelectedCategoryId: initialSelectedCategoryId,
                  initialSelectedBrandId: initialSelectedBrandId,
                  isEWGVerifiedSearch: isEWGVerifiedSearch,
                  isPremiumUser:
                      appBloc.isAuthenticated && appBloc.isPremiumUser,
                  initialSelectedSubCategoryId: initialSelectedSubCategoryId,
                ),
              ),
      child: SafeArea(
        bottom: true,
        child: FiltersContentScreen(
          productCategory: productCategory,
          isEWGVerifiedSearch: isEWGVerifiedSearch,
          filterOpenedFrom: filterOpenedFrom,
          onManagePreferencesTap: () {
            onManagePreferencesTap.call();
          },
          initialSelectedCategoryId: initialSelectedCategoryId,
          initialSelectedSubCategoryId: initialSelectedSubCategoryId,
          onTapLearnPremium: onTapLearnPremium,
        ),
      ),
    );
  }
}
