import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_product_by_category_content_screen.dart';
import 'package:healthy_living_find/src/ui/widgets/browse_product_by_category_header_search.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductByCategoryScreen extends StatelessWidget {
  final BrowseProductByCategoryParams params;

  const BrowseProductByCategoryScreen({required this.params, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: Column(
        children: [
          BrowseProductByCategoryHeaderSearch(
            type: params.type,
          ),
          Expanded(child: BrowseProductByCategoryContentScreen(params: params)),
        ],
      ),
    );
  }
}
