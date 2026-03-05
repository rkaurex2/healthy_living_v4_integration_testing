import 'package:design_system/design_system.dart' show DSIcons, DSTextStyleType;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_my_items/src/utils/my_items_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class HistorySortByBottomSheetWidget extends StatelessWidget {
  final String title;
  final int selectedIndex;
  final ValueChanged<int> onChanged;
  final String? leadIcon;

  const HistorySortByBottomSheetWidget({
    required this.title,
    required this.selectedIndex,
    required this.onChanged,
    this.leadIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sortOptions =  MyItemsUtils().getHistorySortOptions();

    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          HeaderWithTitle(
            title: title,
            textStyle: DSTextStyleType.primaryHeadingSBold,
            leadIcon: leadIcon ?? DSIcons.icChevronLeft,
            onTapLeadIcon: () => context.pop(),
          ),
          ...List.generate(sortOptions.length, (index) {
            final isSelected = index == selectedIndex;
            // KEY: TestKeys.historyAllFilter / historyViewedFilter / historySubmittedFilter
            return SortByBottomSheetOptionTile(
              key: Key('history_${sortOptions[index].type.name}_filter'),
              label: sortOptions[index].name,
              isSelected: isSelected,
              onTap: () {
                context.pop();
                if (isSelected) return;
                onChanged(index);
              },
            );
          }),
        ],
      ),
    );
  }
}
