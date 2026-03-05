import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/src/domain/models/search_lists_model.dart';
import 'package:healthy_living_find/src/domain/models/search_pagination_item_model.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/search_my_lists/search_my_lists_event.dart';
import 'package:healthy_living_find/src/ui/models/search_my_lists_cached_data_model.dart';
import 'package:healthy_living_find/src/ui/screens/lists/search_my_lists_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart' show injector;

class SearchMyListsScreen extends StatefulWidget {
  const SearchMyListsScreen({
    required this.searchedText,
    required this.onMyListsUpdate,
    this.initialMyLists,
    this.pagination,
    super.key,
  });

  final String searchedText;
  final List<SearchListsModel>? initialMyLists;
  final SearchPaginationItemModel? pagination;
  final Function(SearchMyListsCachedDataModel myListsData) onMyListsUpdate;

  @override
  State<SearchMyListsScreen> createState() => _SearchMyListsScreenState();
}

class _SearchMyListsScreenState extends State<SearchMyListsScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocProvider(
      create:
          (_) =>
              injector.get<SearchMyListsBloc>()..add(
                SearchMyListsEvent.searchMyListsInitialised(
                  initialLists: widget.initialMyLists ?? [],
                  pagination: widget.pagination,
                ),
              ),
      child: SearchMyListsContentScreen(
        searchedText: widget.searchedText,
        initialMyLists: widget.initialMyLists,
        pagination: widget.pagination,
        onMyListsUpdate: widget.onMyListsUpdate,
      ),
    );
  }

  @override
  bool get wantKeepAlive => false;
}
