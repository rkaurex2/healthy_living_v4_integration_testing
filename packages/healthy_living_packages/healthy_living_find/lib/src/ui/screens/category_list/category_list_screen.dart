import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/domain/models/search_category_item_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/category_list/category_list_event.dart';
import 'package:healthy_living_find/src/ui/models/category_list_update_callback.dart';
import 'package:healthy_living_find/src/ui/screens/category_list/category_list_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show injector;

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({
    required this.searchedText,
    required this.onCategoryListUpdate,
    this.initialCategoryList,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final List<SearchCategoryItemModel>? initialCategoryList;
  final SearchPaginationItemModel? pagination;
  final CategoryListUpdateCallback onCategoryListUpdate;

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create:
          (_) =>
              injector.get<CategoryListBloc>()..add(
                CategoryListEvent.categoryListInitialised(
                  initialCategoryList: widget.initialCategoryList ?? [],
                  pagination: widget.pagination,
                ),
              ),
      child: CategoryListContentScreen(
        searchedText: widget.searchedText,
        initialCategoryList: widget.initialCategoryList,
        pagination: widget.pagination,
        onCategoryListUpdate: widget.onCategoryListUpdate,
      ),
    );
  }

  @override
  bool get wantKeepAlive => false;
}
