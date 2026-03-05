import 'package:healthy_living/src/util/app_bottom_nav_bar_utils.dart';

class AppBottomNavBarItemUiModel {
  const AppBottomNavBarItemUiModel({
    required this.type,
    required this.label,
    required this.index,
    required this.iconPath,
    required this.activeIconPath,
    required this.disabled,
  });

  final AppBottomNavBarItemType type;
  final String label;
  final int index;
  final String iconPath;
  final String activeIconPath;
  final bool disabled;
}
