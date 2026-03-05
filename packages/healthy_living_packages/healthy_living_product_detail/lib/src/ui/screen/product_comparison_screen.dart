import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/domain/models/product_compare_request_model.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_compare/product_compare_event.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_comparison_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductComparisonScreen extends StatelessWidget {
  final ProductComparisonExtraParams productComparisonExtraParams;

  const ProductComparisonScreen({
    required this.productComparisonExtraParams,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: BlocProvider<ProductCompareBloc>(
        create:
            (context) =>
                injector.get<ProductCompareBloc>()..add(
                  ProductCompareEvent.requested(
                    request: ProductCompareRequestModel(
                      ids: productComparisonExtraParams.productIds,
                      productType:
                          productComparisonExtraParams.productCategory.value,
                    ),
                  ),
                ),
        child: ProductComparisonContentScreen(
          productComparisonExtraParams: productComparisonExtraParams,
        ),
      ),
    );
  }
}
