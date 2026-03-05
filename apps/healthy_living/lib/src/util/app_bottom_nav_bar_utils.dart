import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living/src/ui/models/app_bottom_nav_bar_item_ui_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

enum AppBottomNavBarItemType { home, find, scan, myItems, account }

class AppBottomNavBarUtils {
  AppBottomNavBarUtils._();

  static final AppBottomNavBarUtils _instance = AppBottomNavBarUtils._();

  factory AppBottomNavBarUtils() => _instance;

  List<AppBottomNavBarItemUiModel> getBottomNavData(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    return [
      AppBottomNavBarItemUiModel(
        type: AppBottomNavBarItemType.home,
        label: localizations.healthyLiving_bottomNavBar_home,
        index: 0,
        iconPath: DSIcons.icHomeOutline,
        activeIconPath: DSIcons.icHomeFilled,
        disabled: false,
      ),
      AppBottomNavBarItemUiModel(
        type: AppBottomNavBarItemType.find,
        label: localizations.healthyLiving_bottomNavBar_find,
        index: 1,
        iconPath: DSIcons.icFindOutline,
        activeIconPath: DSIcons.icFindFilled,
        disabled: false,
      ),
      AppBottomNavBarItemUiModel(
        type: AppBottomNavBarItemType.scan,
        label: localizations.healthyLiving_bottomNavBar_scan,
        index: 2,
        iconPath: DSIcons.icBrandedScanner,
        activeIconPath: DSIcons.icBrandedScannerFilled,
        disabled: false,
      ),
      AppBottomNavBarItemUiModel(
        type: AppBottomNavBarItemType.myItems,
        label: localizations.healthyLiving_bottomNavBar_myItems,
        index: 3,
        iconPath: DSIcons.icMyItemsOutline,
        activeIconPath: DSIcons.icMyItemsFilled,
        disabled: false,
      ),
      AppBottomNavBarItemUiModel(
        type: AppBottomNavBarItemType.account,
        label: localizations.healthyLiving_bottomNavBar_account,
        index: 4,
        iconPath: DSIcons.icMyAccountOutline,
        activeIconPath: DSIcons.icMyAccountFilled,
        disabled: false,
      ),
    ];
  }
}
