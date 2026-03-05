import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceListItemWidget extends StatelessWidget {
  final CuratedIngredientPreferenceListModel? curatedIngredientPreferencesModel;
  final VoidCallback onTap;
  final bool isLoading;
  const IngredientPreferenceListItemWidget({
    required this.curatedIngredientPreferencesModel,
    required this.onTap,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: isLoading,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp300,
          ),
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
            border: Border.all(
              color: context.dsColors.strokeNeutralDefault,
              width: 1,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DSText(
                      text: curatedIngredientPreferencesModel?.name,
                      textStyle: DSTextStyleType.primaryBodySMedium,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
                    DSText(
                      text: curatedIngredientPreferencesModel?.description,
                      textStyle: DSTextStyleType.primaryBodySRegular,
                      textColor: context.dsColors.textNeutralSecondary,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),

              DSSpacingWidget.horizontal(spacing: context.dsSpacing.sp200),
              DSImage.asset(
                _imageType(
                  listType: curatedIngredientPreferencesModel?.listType ?? "",
                  userSelected:
                      curatedIngredientPreferencesModel?.userSelected ?? false,
                ),
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _imageType({required String listType, required bool userSelected}) {
    if (listType == StringConstants.ingredientPreferencesPreferListType) {
      return userSelected ? DSIcons.icPrefer : DSIcons.icPreferDisabled;
    } else if (listType == StringConstants.ingredientPreferencesAvoidListType) {
      return userSelected ? DSIcons.icAvoid : DSIcons.icAvoidDisabled;
    }
    return "";
  }
}
