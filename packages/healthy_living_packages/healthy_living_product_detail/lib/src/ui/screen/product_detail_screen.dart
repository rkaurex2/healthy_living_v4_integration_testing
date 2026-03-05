import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_bloc.dart';
import 'package:healthy_living_product_detail/src/ui/bloc/product_detail_event.dart';
import 'package:healthy_living_product_detail/src/ui/widget/product_detail_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductDetailScreen extends StatefulWidget {
  final ProductDetailParamModel product;

  const ProductDetailScreen({required this.product, super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appBloc = context.read<AppBloc>();
      if (appBloc.openPaywallAfterAuthFromProductDetail) {
        appBloc.add(AppEvent.navigationToPaywall());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    return BlocProvider<ProductDetailBloc>(
      create:
          (_) =>
              injector.get<ProductDetailBloc>()..add(
                ProductDetailEvent.initialized(
                  product: widget.product,
                  isAuthenticated: appBloc.isAuthenticated,
                  isPremiumUser: appBloc.isPremiumUser,
                ),
              ),
      // KEY: TestKeys.productDetailScreen
      child: ProductDetailContentScreen(
        key: const Key('product_detail_screen'),
        product: widget.product,
      ),
    );
  }
}
