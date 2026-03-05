import 'package:design_system/design_system.dart' show DSIcons, DSTextStyleType;
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SortByBottomSheetWidget extends StatelessWidget {
  final String title;
  final List<SortOption> options;
  final int selectedIndex;
  final ValueChanged<int> onChanged;
  final String? leadIcon;

  const SortByBottomSheetWidget({
    required this.title,
    required this.options,
    required this.selectedIndex,
    required this.onChanged,
    this.leadIcon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

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
          ...List.generate(options.length, (index) {
            final isSelected = index == selectedIndex;
            return SortByBottomSheetOptionTile(
              label: getSortLabelFromType(
                type: options[index].type,
                localizations: localizations,
              ),
              isSelected: isSelected,
              onTap: () {
                Navigator.of(context).maybePop();
                onChanged(index);
              },
            );
          }),
        ],
      ),
    );
  }

  String getSortLabelFromType({
    required SortType type,
    required HealthyLivingSharedLocalizations localizations,
  }) {
    switch (type) {
      case SortType.hazardScoreBestToWorst:
        return localizations.filters_sort_hazardScoreBestToWorst;
      case SortType.hazardScoreWorstToBest:
        return localizations.filters_sort_hazardScoreWorstToBest;
      case SortType.alphabeticalAToZ:
        return localizations.filters_sort_alphabeticalAToZ;
      case SortType.alphabeticalZToA:
        return localizations.filters_sort_alphabeticalZToA;
    }
  }
}
