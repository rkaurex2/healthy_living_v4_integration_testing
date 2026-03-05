import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living/src/ui/widgets/app_bottom_nav_bar_item.dart';
import 'package:healthy_living/src/util/app_bottom_nav_bar_utils.dart';

class AppBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final bool isPremiumUser;

  const AppBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    this.isPremiumUser = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.dsColors.surfaceNeutralContainerWhite,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -1),
            blurRadius: 1,
            color: Colors.black.withValues(alpha: 0.08),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children:
              AppBottomNavBarUtils()
                  .getBottomNavData(context)
                  .map(
                    (bottomNavBarItem) => AppBottomNavBarItem(
                      // KEY: TestKeys.homeTab / findTab / scanTab / myItemsTab / accountTab
                      key: Key(
                        switch (bottomNavBarItem.type) {
                          AppBottomNavBarItemType.home => 'home_tab',
                          AppBottomNavBarItemType.find => 'find_tab',
                          AppBottomNavBarItemType.scan => 'scan_tab',
                          AppBottomNavBarItemType.myItems => 'my_items_tab',
                          AppBottomNavBarItemType.account => 'account_tab',
                        },
                      ),
                      bottomNavItem: bottomNavBarItem,
                      currentIndex: currentIndex,
                      isPremiumUser: isPremiumUser,
                      onTap: onTap,
                    ),
                  )
                  .toList(),
        ),
      ),
    );
  }
}
