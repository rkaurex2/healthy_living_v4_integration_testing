import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/ui/widgets/category_item.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductCategoryFilter extends StatefulWidget {
  final List<String> items;
  final int initialSelected;
  final ValueChanged<int>? onSelected;
  final String title;
  final Color bgColor;

  const BrowseProductCategoryFilter({
    required this.items,
    required this.title,
    required this.bgColor,
    this.initialSelected = 0,
    this.onSelected,
    super.key,
  });

  @override
  State<BrowseProductCategoryFilter> createState() =>
      _BrowseProductCategoryFilterState();
}

class _BrowseProductCategoryFilterState
    extends State<BrowseProductCategoryFilter> {
  late int _selected;

  @override
  void initState() {
    super.initState();
    _selected = widget.initialSelected.clamp(0, widget.items.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.bgColor,
      child: Column(
        children: [
          HeaderWithTitle(
            title: widget.title,
            leadIcon: DSIcons.icClose,
            onTapLeadIcon: () {
              context.pop();
            },
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
          GridView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: context.dsSpacing.sp400,
              vertical: context.dsSpacing.sp200,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 14,
              mainAxisSpacing: 14,
              childAspectRatio: 1.95, // wide pill cards
            ),
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final selected = index == _selected;
              return CategoryItem(
                label: widget.items[index],
                selected: selected,
                onTap: () {
                  setState(() => _selected = index);
                  widget.onSelected?.call(index);
                  context.pop();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
