import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_find/l10n/healthy_living_find_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchAllResultsSectionWidget<T> extends StatelessWidget {
  final String title;
  final List<T> items;
  final Widget Function(T item, int? index) itemBuilder;
  final VoidCallback? onViewAllTap;
  final String? bottomButtonText;
  final VoidCallback? onBottomButtonPressed;
  final int maxVisibleItems;
  final int? sectionTotalLength;
  final String searchQuery;

  const SearchAllResultsSectionWidget({
    required this.title,
    required this.items,
    required this.itemBuilder,
    required this.searchQuery,
    super.key,
    this.onViewAllTap,
    this.bottomButtonText,
    this.onBottomButtonPressed,
    this.maxVisibleItems = 5,
    this.sectionTotalLength,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final findLocalizations = HealthyLivingFindLocalizations.of(context)!;

    final visibleItems =
        items.length > maxVisibleItems
            ? items.take(maxVisibleItems).toList()
            : items;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: context.dsSpacing.sp200),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DSText(
                text: "$title (${sectionTotalLength?.withThousandSeparator()})",
                textStyle: DSTextStyleType.primaryCaption,
                textColor: context.dsColors.textNeutralOnWhite,
              ),
              if (onViewAllTap != null && items.isNotEmpty)
                LinkTextWidget(
                  title: healthyLivingSharedLocalizations.general_view_all,
                  onTap: onViewAllTap,
                ),
            ],
          ),
        ),
        if (items.isNotEmpty) ...{
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: visibleItems.length,
            separatorBuilder: (_, __) => DSDivider(),
            itemBuilder: (context, index) => itemBuilder(visibleItems[index], index),
          ),
          DSDivider(),
          if (bottomButtonText.isValidValue && onBottomButtonPressed != null)
            Padding(
              padding: EdgeInsets.only(
                top: context.dsSpacing.sp300,
                bottom: context.dsSpacing.sp200,
              ),
              child: DSButtonPrimary(
                text: bottomButtonText ?? "",
                state: DSButtonState.normal,
                type: DSButtonType.outline,
                size: DSButtonSize.small,
                onPressed: onBottomButtonPressed,
                textStyle: DSTextStyleType.primaryButtonLRegular,
              ),
            ),
        } else ...{
          SearchNoResultRowItem(
            title: findLocalizations.find_allTab_noResultsFoundForSection(
              title.toLowerCase(),
              searchQuery,
            ),
            highLightTexts: [searchQuery],
          ),
          DSDivider(),
        },
      ],
    );
  }
}
