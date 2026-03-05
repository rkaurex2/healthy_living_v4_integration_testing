import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/domain/models/search_ingredient_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/ingredient_list/ingredient_list_event.dart';
import 'package:healthy_living_find/src/ui/models/ingredient_list_update_callback.dart';
import 'package:healthy_living_find/src/ui/screens/ingredient_list/ingredient_list_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show injector;

class IngredientListScreen extends StatefulWidget {
  const IngredientListScreen({
    required this.searchedText,
    required this.onIngredientListUpdate,
    this.initialIngredientList,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final List<SearchIngredientModel>? initialIngredientList;
  final SearchPaginationItemModel? pagination;
  final IngredientListUpdateCallback onIngredientListUpdate;

  @override
  State<IngredientListScreen> createState() => _IngredientListScreenState();
}

class _IngredientListScreenState extends State<IngredientListScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create:
          (_) =>
              injector.get<IngredientListBloc>()..add(
                IngredientListEvent.ingredientListInitialised(
                  initialIngredientList: widget.initialIngredientList ?? [],
                  pagination: widget.pagination,
                ),
              ),
      child: IngredientListContentScreen(
        searchedText: widget.searchedText,
        initialIngredientList: widget.initialIngredientList,
        pagination: widget.pagination,
        onIngredientListUpdate: widget.onIngredientListUpdate,
      ),
    );
  }

  @override
  bool get wantKeepAlive => false;
}
