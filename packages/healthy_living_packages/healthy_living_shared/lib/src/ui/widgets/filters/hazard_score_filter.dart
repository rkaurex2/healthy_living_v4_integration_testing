import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show HazardLevel, HealthyLivingSharedLocalizations, ProductCategory;
import 'package:healthy_living_shared/src/ui/models/filters/hazard_score_filter_model.dart';
import 'package:healthy_living_shared/src/ui/widgets/filters/score_chips_bar.dart';
import 'package:healthy_living_shared/src/utils/filter_utils.dart';

class HazardScoreFilter extends StatefulWidget {
  final ProductCategory productCategory;
  final ValueChanged<HazardLevel?>? onHazardLevelChanged;
  final HazardLevel? initialHazardLevel;
  final bool? isEWGVerified;

  const HazardScoreFilter({
    required this.productCategory,
    this.onHazardLevelChanged,
    this.initialHazardLevel,
    this.isEWGVerified,
    super.key,
  });

  @override
  State<HazardScoreFilter> createState() => _HazardScoreFilterState();
}

class _HazardScoreFilterState extends State<HazardScoreFilter> {
  List<HazardScoreFilterModel> _items(BuildContext context) {
    return FilterUtils().getHazardScoreFilterData(
      category: widget.productCategory,
      localizations: HealthyLivingSharedLocalizations.of(context)!,
    );
  }

  bool _onlyVerified = false;
  int? _selectedIndex;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _initializeHazardLevel();
      }
    });
  }

  @override
  void didUpdateWidget(HazardScoreFilter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialHazardLevel != widget.initialHazardLevel) {
      _initializeHazardLevel();
    }
  }

  void _initializeHazardLevel() {
    if (!mounted || widget.initialHazardLevel == null) {
      return;
    }

    final localizations = HealthyLivingSharedLocalizations.of(context);
    if (localizations == null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted) {
          _initializeHazardLevel();
        }
      });
      return;
    }

    final items = FilterUtils().getHazardScoreFilterData(
      category: widget.productCategory,
      localizations: localizations,
    );

    final targetLevel = widget.initialHazardLevel!;

    if (targetLevel == HazardLevel.verified) {
      setState(() {
        _onlyVerified = true;
        final verifiedIndex = items.indexWhere(
          (e) => e.hazardLevel == HazardLevel.verified,
        );
        _selectedIndex = verifiedIndex >= 0 ? verifiedIndex : 0;
      });
    } else {
      setState(() {
        _onlyVerified = false;
        final targetIndex = items.indexWhere(
          (e) => e.hazardLevel == targetLevel,
        );
        _selectedIndex = targetIndex >= 0 ? targetIndex : null;
      });
    }
  }

  HazardLevel? get selectedHazardLevel {
    if (_onlyVerified) {
      return HazardLevel.verified;
    }
    if (_selectedIndex == null) return null;
    final items = _items(context);
    if (_selectedIndex! >= 0 && _selectedIndex! < items.length) {
      return items[_selectedIndex!].hazardLevel;
    }
    return null;
  }

  void _notifyHazardLevelChanged() {
    widget.onHazardLevelChanged?.call(selectedHazardLevel);
  }

  String _rightLabel(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;
    if (_onlyVerified) {
      return localizations.healthyLivingShared_hazardScore_best;
    }
    final idx = _selectedIndex;
    if (idx == null) return localizations.healthyLivingShared_hazardScore_all;
    final level = _items(context)[idx].hazardLevel;
    switch (level) {
      case HazardLevel.low:
      case HazardLevel.lowest:
        return localizations.healthyLivingShared_hazardScore_lowOrBetter;
      case HazardLevel.moderate:
        return localizations.healthyLivingShared_hazardScore_moderateOrBetter;
      case HazardLevel.high:
      case HazardLevel.highest:
        return localizations.healthyLivingShared_hazardScore_all;
      case HazardLevel.verified:
        return localizations.healthyLivingShared_hazardScore_best;
      case HazardLevel.noData:
        return localizations.healthyLivingShared_hazardScore_all;
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.dsColors;
    final spacing = context.dsSpacing;
    final items = _items(context);

    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return Opacity(
      opacity: widget.isEWGVerified == true ? 0.5 : 1.0,
      child: IgnorePointer(
        ignoring: widget.isEWGVerified == true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DSText(
                  text: localizations.healthyLivingShared_hazardScore_title,
                  textStyle: DSTextStyleType.primaryHeadingXs,
                  textColor: colors.textPrimaryDefault,
                ),
                DSText(
                  text: _rightLabel(context),
                  textStyle: DSTextStyleType.primaryBodyMRegular,
                  textColor: colors.textNeutralOnWhite,
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            DSSpacingWidget.vertical(spacing: spacing.sp400),
            if (widget.productCategory != ProductCategory.food) ...{
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: colors.surfaceNeutralContainerWhite,
                  border: Border.all(color: colors.strokeNeutralDefault),
                  borderRadius: BorderRadius.circular(context.dsRadius.rd300),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: spacing.sp200,

                  /// Vertical padding is calculated as
                  /// (total height(58) - icon height(40)) / 2 = 9
                  /// Using 8 as a standard
                  vertical: context.dsSpacing.sp200,
                ),
                child: Row(
                  children: [
                    DSImage.asset(
                      DSIcons.icEWGVerified,
                      width: context.dsSizes.sz700,
                      height: context.dsSizes.sz700,
                      fit: BoxFit.contain,
                    ),
                    DSSpacingWidget.horizontal(spacing: spacing.sp200),
                    Expanded(
                      child: Row(
                        children: [
                          DSText(
                            text:
                                localizations
                                    .healthyLivingShared_hazardScore_onlyEwgVerified,
                            textStyle: DSTextStyleType.primaryBodyMRegular,
                            textColor: colors.textNeutralOnWhite,
                          ),
                          DSSpacingWidget.horizontal(spacing: spacing.sp100),
                          DSDivider(),
                          DSSpacingWidget.horizontal(spacing: spacing.sp100),
                          DSText(
                            text:
                                localizations
                                    .healthyLivingShared_hazardScore_best,
                            textStyle: DSTextStyleType.primaryBodyMMedium,
                            textColor: colors.textNeutralOnWhite,
                          ),
                        ],
                      ),
                    ),
                    DSToggle(
                      value: _onlyVerified,
                      onChanged:
                          (value) => setState(() {
                            _onlyVerified = value;
                            if (value) {
                              final verifiedIndex = items.indexWhere(
                                (hazardLevelItem) =>
                                    hazardLevelItem.hazardLevel ==
                                    HazardLevel.verified,
                              );
                              _selectedIndex =
                                  verifiedIndex >= 0 ? verifiedIndex : 0;
                            } else {
                              _selectedIndex = items.length - 1;
                            }
                            _notifyHazardLevelChanged();
                          }),
                    ),
                  ],
                ),
              ),
              DSSpacingWidget.vertical(spacing: spacing.sp500),
            },
            ScoreChipsBar(
              items: items,
              selectedIndex: _selectedIndex,
              onSelected:
                  (i) => setState(() {
                    _selectedIndex = i;
                    if (i >= 0 && i < items.length) {
                      final selectedLevel = items[i].hazardLevel;
                      if (selectedLevel == HazardLevel.verified) {
                        _onlyVerified = true;
                      } else {
                        _onlyVerified = false;
                      }
                    }
                    _notifyHazardLevelChanged();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
