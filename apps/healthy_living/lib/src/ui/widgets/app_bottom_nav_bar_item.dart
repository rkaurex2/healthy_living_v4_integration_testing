import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living/src/ui/models/app_bottom_nav_bar_item_ui_model.dart';
import 'package:healthy_living/src/util/app_bottom_nav_bar_utils.dart';

class AppBottomNavBarItem extends StatelessWidget {
  const AppBottomNavBarItem({
    required this.bottomNavItem,
    required this.currentIndex,
    required this.onTap,
    required this.isPremiumUser,
    super.key,
  });

  final AppBottomNavBarItemUiModel bottomNavItem;
  final Function(int) onTap;
  final int currentIndex;
  final bool isPremiumUser;

  @override
  Widget build(BuildContext context) {
    final index = bottomNavItem.index;
    final isSelected = currentIndex == index;
    final bottomNavItemsLength =
        AppBottomNavBarUtils().getBottomNavData(context).length;

    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / bottomNavItemsLength,
        child: GestureDetector(
          onTap: bottomNavItem.disabled ? null : () => onTap(index),
          behavior: HitTestBehavior.opaque,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 6,
              horizontal: context.dsSpacing.sp300,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    DSImage.asset(
                      isSelected
                          ? bottomNavItem.activeIconPath
                          : bottomNavItem.iconPath,
                      color:
                          bottomNavItem.disabled
                              ? context.dsColors.iconNeutralDisabled
                              : isSelected
                              ? context.dsColors.iconPrimary
                              : context.dsColors.iconNeutralFade,
                      width: 24,
                      height: 24,
                    ),
                    if (isPremiumUser &&
                        bottomNavItem.type ==
                            AppBottomNavBarItemType.account) ...{
                      Positioned(
                        bottom: -3,
                        right: -5,
                        child: DSImage.asset(DSIcons.icPremiumCrown),
                      ),
                    },
                  ],
                ),
                const SizedBox(height: 2),
                DSText(
                  text: bottomNavItem.label,
                  textStyle: DSTextStyleType.primaryNavigationXs,
                  textColor:
                      isSelected
                          ? context.dsColors.textPrimaryDefault
                          : context.dsColors.textNeutralFade,
                  textAlign: TextAlign.center,
                  textScaler: TextScaler.noScaling,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
