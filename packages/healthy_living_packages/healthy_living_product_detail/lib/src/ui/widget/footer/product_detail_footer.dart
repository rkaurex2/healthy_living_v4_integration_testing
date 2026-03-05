import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/widget/footer/last_update_widget.dart';
import 'package:healthy_living_product_detail/src/ui/widget/footer/learn_more_about_score_widget.dart';
import 'package:healthy_living_product_detail/src/utils/product_details_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppRoutes,
        HealthyLivingSharedLocalizations,
        Validate,
        WebviewScreenParams;

class ProductDetailFooter extends StatelessWidget {
  const ProductDetailFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetailBloc = context.read<ProductDetailBloc>();

    return Container(
      color: context.dsColors.surfaceNeutralBackgroundLight,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
        child: Column(
          children: [
            LearnMoreAboutScoreWidget(
              onTap: () => onLearnMoreTap(context: context),
            ),
            LastUpdateWidget(
              lastUpdated: productDetailBloc.productBasicDetail?.lastUpdated,
            ),
          ],
        ),
      ),
    );
  }

  void onLearnMoreTap({required BuildContext context}) {
    final productDetailBloc = context.read<ProductDetailBloc>();
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final url = ProductDetailsUtils().getLearnMoreAboutScoresUrl(
      isVerifiedProduct:
          productDetailBloc.productBasicDetail?.isEwgVerified == true,
      productCategory: productDetailBloc.productCategory,
      isSunscreen: productDetailBloc.isSunscreen,
    );

    if (url.isValidValue) {
      context.pushNamed(
        AppRoutes.webView.name,
        queryParameters:
            WebviewScreenParams(title: "", url: url).toQueryParameters(),
      );
    } else {
      DSToast.showErrorToast(
        context: context,
        title: healthyLivingSharedLocalizations.general_urlLaunch_urlIsNotValid,
      );
    }
  }
}
