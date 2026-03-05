import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_find/healthy_living_find.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/all_tab/all_tab_event.dart';
import 'package:healthy_living_find/src/ui/screens/all_tab_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AllTabScreen extends StatelessWidget {
  const AllTabScreen({
    required this.searchedText,
    required this.allTabData,
    required this.onViewAllTap,
    this.onAllTabDataUpdated,
    super.key,
  });

  final String searchedText;
  final SearchResponseModel? allTabData;
  final void Function(SearchResponseModel? allTabData)? onAllTabDataUpdated;
  final void Function(SearchTabType) onViewAllTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              injector.get<AllTabBloc>()..add(
                AllTabEvent.allTabInitialised(
                  initialAllTabData: allTabData,
                  searchQuery: searchedText,
                ),
              ),
      child: AllTabContentScreen(
        onAllTabDataUpdated: onAllTabDataUpdated,
        onViewAllTap: onViewAllTap,
      ),
    );
  }
}
