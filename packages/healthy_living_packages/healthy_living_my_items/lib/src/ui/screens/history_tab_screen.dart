import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/history/history_list_event.dart';
import 'package:healthy_living_my_items/src/ui/screens/history_tab_content_screen.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_list_sign_in_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AppBloc, IntegerConstants, injector;

class HistoryTabScreen extends StatelessWidget {
  const HistoryTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
      body: BlocProvider(
        create: (_) {
          final bloc = injector.get<HistoryListBloc>();
          bloc.add(const HistoryListEvent.initialized());
          return bloc;
        },
        child:
            appBloc.isAuthenticated
                ? HistoryContentScreen()
                : MyListsSignInWidget(
                  tapIndex: IntegerConstants.myListTapHistoryIndex,
                ),
      ),
    );
  }
}
