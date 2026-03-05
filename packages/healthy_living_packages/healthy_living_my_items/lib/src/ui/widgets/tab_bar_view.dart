import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_my_items/l10n/healthy_living_my_items_localizations.dart';

class TabBarHeaderView extends StatelessWidget {
  final TabController tabController;
  const TabBarHeaderView({required this.tabController, super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingMyItemsLocalizations healthyLivingMyItemsLocalizations =
        HealthyLivingMyItemsLocalizations.of(context)!;
    return TabBar(
      controller: tabController,
      padding: EdgeInsets.only(
        left: context.dsSpacing.sp200,
        right: context.dsSpacing.sp200,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
      unselectedLabelColor: context.dsColors.strokePrimaryDefault,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(
          width: 3,
          color: context.dsColors.strokePrimaryDefault,
        ),
      ),
      labelStyle: DSTextStyleType.primaryBodySMedium.getTextStyle(),
      unselectedLabelStyle: DSTextStyleType.primaryBodySRegular.getTextStyle(),
      labelColor: context.dsColors.strokePrimaryDefault,
      dividerColor: context.dsColors.strokeNeutralDefault,

      tabs: [
        Tab(text: healthyLivingMyItemsLocalizations.myItems_lists_lists),
        Tab(text: healthyLivingMyItemsLocalizations.myItems_lists_history),
      ],
    );
  }
}
