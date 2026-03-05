import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_event.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_state.dart';
import 'package:healthy_living_product_detail/src/ui/model/product_detail_tab.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_section_params.dart';
import 'package:healthy_living_product_detail/src/ui/models/finding_section_screen_params.dart';
import 'package:healthy_living_product_detail/src/ui/widget/findings_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/ingredients_section.dart';
import 'package:healthy_living_product_detail/src/ui/widget/label_info_certifications_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/tab_bar.dart';

class TabSection extends StatelessWidget {
  final String score;
  final String title;
  final int productId;

  const TabSection({
    required this.score,
    required this.title,
    required this.productId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productDetailBloc = context.read<ProductDetailBloc>();
    bool isEwgVerified =
        productDetailBloc.productBasicDetail?.isEwgVerified ?? false;

    return BlocBuilder<ProductDetailBloc, ProductDetailState>(
      buildWhen: (prev, current) {
        return current is ProductDetailTabChange;
      },
      builder:
          (context, state) => DecoratedBox(
            decoration: BoxDecoration(
              color: context.dsColors.surfaceNeutralBackgroundMedium,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.dsRadius.rd600),
                topRight: Radius.circular(context.dsRadius.rd600),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: context.dsSpacing.sp500,
                bottom: context.dsSpacing.sp500,
                left: context.dsSpacing.sp400,
                right: context.dsSpacing.sp400,
              ),
              child: Column(
                spacing: context.dsSpacing.sp400,
                children: [
                  ProductDetailTabBar(
                    selectedProductDetailTab:
                        productDetailBloc.selectedProductDetailTab,
                    onTap: (tabType) {
                      productDetailBloc.add(
                        ProductDetailEvent.tabChanged(tabType),
                      );
                    },
                    isEwgVerified: isEwgVerified,
                  ),
                  if (productDetailBloc.selectedProductDetailTab ==
                      ProductDetailTab.findings) ...{
                    FindingsSection(
                      findingSectionParam: FindingSectionScreenParams(
                        findingSectionScreenParams: FindingSectionParams(
                          cosmeticConcernsModel:
                              productDetailBloc.cosmeticConcernsModel,
                          cleanerDetailsScoresModel:
                              productDetailBloc.cleanerDetailsScoresModel,
                          foodDetailScoresModel:
                              productDetailBloc.foodDetailScoresModel,
                          sunscreenDetailsModel:
                              productDetailBloc.sunscreenDetailsModel,
                          foodDetailPageDetailsModel:
                              productDetailBloc.foodDetailPageDetailsModel,
                        ),
                        score: score,
                        title: title,
                      ),
                    ),
                  } else if (productDetailBloc.selectedProductDetailTab ==
                      ProductDetailTab.ingredients) ...{
                    IngredientsSection(productId: productId),
                  } else if (productDetailBloc.selectedProductDetailTab ==
                      ProductDetailTab.labelInfo) ...{
                    LabelInfoCertificationsWidget(),
                  },
                ],
              ),
            ),
          ),
    );
  }
}
