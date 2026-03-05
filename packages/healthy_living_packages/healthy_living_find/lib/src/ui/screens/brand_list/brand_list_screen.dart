import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/domain/models/search_brand_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/brand_list/brand_list_event.dart';
import 'package:healthy_living_find/src/ui/models/brand_list_update_callback.dart';
import 'package:healthy_living_find/src/ui/screens/brand_list/brand_list_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show injector;

class BrandListScreen extends StatefulWidget {
  const BrandListScreen({
    required this.searchedText,
    required this.onBrandListUpdate,
    this.initialBrandList,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final List<SearchBrandModel>? initialBrandList;
  final SearchPaginationItemModel? pagination;
  final BrandListUpdateCallback onBrandListUpdate;

  @override
  State<BrandListScreen> createState() => _BrandListScreenState();
}

class _BrandListScreenState extends State<BrandListScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create:
          (_) =>
              injector.get<BrandListBloc>()..add(
                BrandListEvent.brandListInitialised(
                  initialBrandList: widget.initialBrandList ?? [],
                  pagination: widget.pagination,
                ),
              ),
      child: BrandListContentScreen(
        searchedText: widget.searchedText,
        initialBrandList: widget.initialBrandList,
        pagination: widget.pagination,
        onBrandListUpdate: widget.onBrandListUpdate,
      ),
    );
  }

  @override
  bool get wantKeepAlive => false;
}
