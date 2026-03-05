import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';
import 'package:healthy_living_product_detail/src/domain/models/food_detail_page_details_model.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/model/top_findings_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_compare_top_findings_sections.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_section_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductCompareTopFindings extends StatelessWidget {
  const ProductCompareTopFindings({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;
    final bloc = context.read<ProductCompareBloc>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ProductComparisonSectionHeader(
          title: localizations.productDetail_healthConcern_ewgTopFinding,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        ProductCompareTopFindingsSections(
          topFindingsSection: TopFindingsSection.negative,
          firstProductList: _getTopFindings(
            findingsList: bloc.foodDetailResponseModel?.first.findings,
            section: TopFindingsSection.negative,
          ),
          secondProductList: _getTopFindings(
            findingsList: bloc.foodDetailResponseModel?.last.findings,
            section: TopFindingsSection.negative,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        ProductCompareTopFindingsSections(
          topFindingsSection: TopFindingsSection.positive,
          firstProductList: _getTopFindings(
            findingsList: bloc.foodDetailResponseModel?.first.findings,
            section: TopFindingsSection.positive,
          ),
          secondProductList: _getTopFindings(
            findingsList: bloc.foodDetailResponseModel?.last.findings,
            section: TopFindingsSection.positive,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

        ProductCompareTopFindingsSections(
          topFindingsSection: TopFindingsSection.otherInfo,
          firstProductList: _getTopFindings(
            findingsList: bloc.foodDetailResponseModel?.first.findings,
            section: TopFindingsSection.otherInfo,
          ),
          secondProductList: _getTopFindings(
            findingsList: bloc.foodDetailResponseModel?.last.findings,
            section: TopFindingsSection.otherInfo,
          ),
        ),
      ],
    );
  }

  List<String> _getTopFindings({
    required List<FoodDetailPageDetailsModel>? findingsList,
    required TopFindingsSection section,
  }) {
    final results = <String>[];

    for (final item in findingsList ?? const []) {
      final location = (item.location ?? '').trim().toLowerCase();
      final rating = (item.rating ?? '').trim().toLowerCase();
      final text = (item.summaryText ?? '').trim();
      if (text.isEmpty) continue;

      switch (section) {
        case TopFindingsSection.negative:
          if (location == StringConstants.topFindingsLocation &&
              rating == StringConstants.negative) {
            results.add(text);
          }
          break;

        case TopFindingsSection.positive:
          if (location == StringConstants.topFindingsLocation &&
              rating == StringConstants.positive) {
            results.add(text);
          }
          break;

        case TopFindingsSection.otherInfo:
          if (location == StringConstants.otherInformation) {
            results.add(text);
          }
          break;
      }
    }
    return {...results}.toList();
  }
}
