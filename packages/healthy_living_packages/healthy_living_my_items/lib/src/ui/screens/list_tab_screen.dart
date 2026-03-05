import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_items_lists_widget.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_list_sign_in_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ListTabScreen extends StatefulWidget {
  const ListTabScreen({super.key});

  @override
  State<ListTabScreen> createState() => _ListTabScreenState();
}

class _ListTabScreenState extends State<ListTabScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) {
        return current is RefreshUserLoginState;
      },
      builder: (context, state) {
        final appBloc = context.read<AppBloc>();
        // KEY: TestKeys.listsScreen
        return appBloc.isAuthenticated
            ? MyItemsListsWidget(key: const Key('lists_screen'))
            : MyListsSignInWidget(
              tapIndex: IntegerConstants.myListTapListsIndex,
            );
      },
    );
  }
}
