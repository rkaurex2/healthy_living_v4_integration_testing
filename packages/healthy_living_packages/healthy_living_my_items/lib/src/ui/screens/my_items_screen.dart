import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_bloc.dart';
import 'package:healthy_living_my_items/src/ui/screens/history_tab_screen.dart';
import 'package:healthy_living_my_items/src/ui/screens/list_tab_screen.dart';
import 'package:healthy_living_my_items/src/ui/widgets/tab_bar_view.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyItemsScreen extends StatefulWidget {
  final int index;

  const MyItemsScreen({required this.index, super.key});

  @override
  State<MyItemsScreen> createState() => _MyItemsScreenState();
}

class _MyItemsScreenState extends State<MyItemsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.animateTo(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingMyItemsLocalizations healthyLivingMyItemsLocalizations =
        HealthyLivingMyItemsLocalizations.of(context)!;
    return BlocListener<AppBloc, AppState>(
      listenWhen: (_, current) => current is MoveToHistory,
      listener: (context, state) {
        if (_tabController.index != IntegerConstants.myListTapHistoryIndex) {
          _tabController.animateTo(IntegerConstants.myListTapHistoryIndex);
        }
      },

      // KEY: TestKeys.myItemsScreen
      child: BottomTabScreenPopScope(
        child: Scaffold(
          key: const Key('my_items_screen'),
          backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
          body: SafeArea(
            child: BlocProvider(
              create: (_) => injector.get<MyItemsBloc>(),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    child: Center(
                      child: DSText(
                        text:
                            healthyLivingMyItemsLocalizations
                                .myItems_lists_MyItems,
                        textStyle: DSTextStyleType.primaryHeadingS,
                        textColor: context.dsColors.textPrimaryDefault,
                      ),
                    ),
                  ),

                  Expanded(
                    child: DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBarHeaderView(tabController: _tabController),
                          Expanded(
                            child: TabBarView(
                              controller: _tabController,
                              children: [ListTabScreen(), HistoryTabScreen()],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
