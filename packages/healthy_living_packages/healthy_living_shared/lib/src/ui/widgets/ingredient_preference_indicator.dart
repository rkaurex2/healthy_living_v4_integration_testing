import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show IngredientPreferenceIngredientModel, SmartTitleCaseExtension;
import 'package:healthy_living_shared/l10n/healthy_living_shared_localizations.dart';
import 'package:healthy_living_shared/src/ui/models/ingredient_match.dart';
import 'package:healthy_living_shared/src/ui/widgets/ingredient_match_statement.dart';
import 'package:healthy_living_shared/src/ui/widgets/ingredient_preference_card_style.dart';

class IngredientPreferenceIndicator extends StatefulWidget {
  final IngredientPreferenceMatch match;
  final List<IngredientPreferenceIngredientModel>? ingredientList;
  final VoidCallback? onTap;

  const IngredientPreferenceIndicator({
    required this.match,
    this.ingredientList,
    this.onTap,
    super.key,
  });

  @override
  State<IngredientPreferenceIndicator> createState() =>
      _IngredientPreferenceIndicatorState();
}

class _IngredientPreferenceIndicatorState
    extends State<IngredientPreferenceIndicator>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
    if (widget.match == IngredientPreferenceMatch.no) {
      _toggleExpanded();
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return Stack(
      children: [
        Column(
          children: [
            Container(padding: EdgeInsets.all(context.dsSpacing.sp500)),
            if (widget.ingredientList != null &&
                widget.ingredientList!.isNotEmpty)
              SizeTransition(
                sizeFactor: _expandAnimation,
                child: _buildExpandedContent(context: context, topPadding: 10),
              ),
          ],
        ),
        _buildMainCard(context, localizations),
      ],
    );
  }

  Widget _buildMainCard(
    BuildContext context,
    HealthyLivingSharedLocalizations localizations,
  ) {
    final cardStyle = _getCardStyle(context);

    return GestureDetector(
      onTap:
          widget.ingredientList != null && widget.ingredientList!.isNotEmpty
              ? _toggleExpanded
              : widget.onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(context.dsSpacing.sp400),
            decoration: BoxDecoration(
              color: cardStyle.backgroundColor,
              border: Border.all(color: cardStyle.borderColor),
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            ),
            child: Row(
              children: [
                _buildIcon(context),
                DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp300),
                Expanded(
                  child: DSText(
                    text: _getTitleText(localizations),
                    textStyle: DSTextStyleType.primarySubHeadingS,
                    textColor: context.dsColors.textNeutralOnWhite,
                  ),
                ),
                if (widget.ingredientList != null &&
                    widget.ingredientList!.isNotEmpty)
                  _buildChevronIcon(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandedContent({
    required BuildContext context,
    double? topPadding,
  }) {
    return Container(
      padding: EdgeInsets.only(top: topPadding ?? 4),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: context.dsColors.strokeNeutralDefault,
            width: 1.0,
          ),
          right: BorderSide(
            color: context.dsColors.strokeNeutralDefault,
            width: 1.0,
          ),
          bottom: BorderSide(
            color: context.dsColors.strokeNeutralDefault,
            width: 1.0,
          ),
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(context.dsRadius.rd300),
          bottomRight: Radius.circular(context.dsRadius.rd300),
        ),
      ),
      child: Column(
        children:
            widget.ingredientList!
                .map(
                  (ingredient) => IngredientMatchStatement(
                    matchType: widget.match,
                    ingredientName: ingredient.name.toSmartTitleCase(),
                    listName: ingredient.listName,
                  ),
                )
                .toList(),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    switch (widget.match) {
      case IngredientPreferenceMatch.yes:
        return DSImage.asset(
          DSIcons.icFreeFromAvoidedFilled,
          height: context.dsSizes.sz500,
          width: context.dsSizes.sz500,
        );
      case IngredientPreferenceMatch.no:
        return DSImage.asset(
          DSIcons.icAvoidFilled,
          height: context.dsSizes.sz500,
          width: context.dsSizes.sz500,
        );
      case IngredientPreferenceMatch.unknown:
        return DSImage.asset(
          DSIcons.icUnknownIngredientPreference,
          height: context.dsSizes.sz500,
          width: context.dsSizes.sz500,
        );
      case IngredientPreferenceMatch.preferred:
        return DSImage.asset(
          DSIcons.icPreferFilled,
          height: context.dsSizes.sz500,
          width: context.dsSizes.sz500,
        );
    }
  }

  Widget _buildChevronIcon(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.rotate(
          angle: _animationController.value * 3.14159,
          child: DSImage.asset(
            DSIcons.icChevronDownThin,
            height: context.dsSizes.sz400,
            width: context.dsSizes.sz400,
            color: context.dsColors.iconNeutralDefault,
          ),
        );
      },
    );
  }

  String _getTitleText(HealthyLivingSharedLocalizations localizations) {
    switch (widget.match) {
      case IngredientPreferenceMatch.yes:
        return localizations
            .healthyLivingShared_ingredients_freeAvoidedIngredient;
      case IngredientPreferenceMatch.no:
        return localizations
            .healthyLivingShared_ingredients_containAvoidedIngredient;
      case IngredientPreferenceMatch.unknown:
        return localizations.healthyLivingShared_ingredients_notSuitsIngredient;
      case IngredientPreferenceMatch.preferred:
        return localizations
            .healthyLivingShared_ingredients_containsPreferredIngredient;
    }
  }

  CardStyle _getCardStyle(BuildContext context) {
    switch (widget.match) {
      case IngredientPreferenceMatch.yes:
        return CardStyle(
          backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
          borderColor: context.dsColors.strokeNeutralDefault,
        );
      case IngredientPreferenceMatch.no:
        return CardStyle(
          backgroundColor: context.dsColors.surfaceSemanticErrorLight,
          borderColor: context.dsColors.strokeSemanticOnError,
        );
      case IngredientPreferenceMatch.unknown:
        return CardStyle(
          backgroundColor: context.dsColors.surfaceSemanticWarningLight,
          borderColor: context.dsColors.strokeSemanticOnWarning,
        );
      case IngredientPreferenceMatch.preferred:
        return CardStyle(
          backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
          borderColor: context.dsColors.strokeNeutralDefault,
        );
    }
  }
}
