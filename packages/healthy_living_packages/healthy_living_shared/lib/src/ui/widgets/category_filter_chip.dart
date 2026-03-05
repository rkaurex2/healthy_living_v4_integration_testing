import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CategoryFilterChip extends StatefulWidget {
  final TabController controller;
  final int index;
  final String categoryName;
  final int? categoryCount;
  final bool isDisableCategoryFilterChip;

  const CategoryFilterChip({
    required this.controller,
    required this.index,
    required this.categoryName,
    this.categoryCount,
    this.isDisableCategoryFilterChip = false,
    super.key,
  });

  @override
  State<CategoryFilterChip> createState() => _CategoryFilterChipState();
}

class _CategoryFilterChipState extends State<CategoryFilterChip>
    with TickerProviderStateMixin {
  bool _isSelected(TabController c) {
    final value = c.animation?.value;
    return (value! - widget.index).abs() < 0.5;
  }

  @override
  void initState() {
    super.initState();
    // Listen to tab controller changes to rebuild when selection changes
    widget.controller.addListener(_onTabChange);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTabChange);
    super.dispose();
  }

  void _onTabChange() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (_) {
        final selected = _isSelected(widget.controller);

        return Tab(
          child: Container(
            height: context.dsSizes.sz600,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: context.dsSpacing.sp100,
            ),
            decoration: BoxDecoration(
              color:
                  selected
                      ? context.dsColors.surfacePrimaryDefault
                      : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                DSText(
                  text: widget.categoryName,
                  textStyle: DSTextStyleType.primaryButtonSRegular,
                  textColor:
                      selected
                          ? context.dsColors.textOnSurfaceDefault
                          : widget.isDisableCategoryFilterChip
                          ? context.dsColors.textNeutralDisabled
                          : context.dsColors.textNeutralOnWhite,
                ),
                SizedBox(width: context.dsSpacing.sp100),
                if (widget.categoryCount != null) ...{
                  DSText(
                    text:
                        '(${HealthyLivingSharedUtils.formatCountSimple(widget.categoryCount.toString())})',
                    textStyle: DSTextStyleType.primaryButtonSRegular,
                    textColor:
                        selected
                            ? context.dsColors.textOnSurfaceDefault
                            : widget.isDisableCategoryFilterChip
                            ? context.dsColors.textNeutralDisabled
                            : context.dsColors.textNeutralOnWhite,
                  ),
                },
              ],
            ),
          ),
        );
      },
    );
  }
}
