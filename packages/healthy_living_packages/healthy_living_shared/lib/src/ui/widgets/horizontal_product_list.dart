import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/horizontal_product_list_item.dart';

class HorizontalProductList extends StatelessWidget {
  final String title;
  final List<GeneralProductListItemUIModel> items;
  final ListTitleHorizontalHeaderType? headerType;
  final VoidCallback onHeaderIconTap;
  final Function(int) onListItemTap;

  const HorizontalProductList({
    required this.title,
    required this.items,
    required this.onHeaderIconTap,
    required this.onListItemTap,
    this.headerType = ListTitleHorizontalHeaderType.defaultType,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: HeaderTitleType(
            text: title,
            type: headerType,
            onPressed: onHeaderIconTap,
            padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        if (items.isNotEmpty) ...[
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 220,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(items.length, (index) {
                  return Container(
                    width: 104,
                    margin: EdgeInsets.only(
                      left: index == 0 ? context.dsSpacing.sp400 : 0,
                      right: index < items.length - 1
                          ? context.dsSpacing.sp200
                          : context.dsSpacing.sp400,
                    ),
                    child: HorizontalProductListItem(
                      item: items[index],
                      onTap: () => onListItemTap(index),
                    ),
                  );
                }),
              ),
            ),
          ),

          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
        ],
      ],
    );
  }
}
