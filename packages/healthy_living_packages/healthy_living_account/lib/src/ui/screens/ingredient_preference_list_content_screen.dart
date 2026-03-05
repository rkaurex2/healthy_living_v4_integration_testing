import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_event.dart';
import 'package:healthy_living_account/src/ui/blocs/ingredient_preference/ingredient_preference_state.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preference_list_item_widget.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preference_list_section_header.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preference_title_header.dart';
import 'package:healthy_living_account/src/ui/widgets/ingredient_preferences_skeleton.dart';
import 'package:healthy_living_account/src/utils/ingredient_preference_category_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class IngredientPreferenceListContentScreen extends StatelessWidget {
  final Key? iconKey;
  final VoidCallback onTapSave;
  final VoidCallback onTapCancel;
  final VoidCallback onTapBack;
  final VoidCallback onTapInfo;
  final String categoryType;

  const IngredientPreferenceListContentScreen({
    required this.onTapSave,
    required this.onTapCancel,
    required this.onTapBack,
    required this.onTapInfo,
    required this.categoryType,
    super.key,
    this.iconKey,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    List<CuratedIngredientPreferenceListModel?> avoidList = [];
    List<CuratedIngredientPreferenceListModel?> preferList = [];
    bool isSavingInProgress = false;
    // KEY: TestKeys.ingredientAvoidList (screen contains both avoid & prefer lists)
    return Scaffold(
      key: const Key('ingredient_avoid_list'),
      backgroundColor: Colors.white,
      body: BlocConsumer<IngredientPreferenceBloc, IngredientPreferenceState>(
        listener: (context, state) {
          if (state is SavePreferenceLoadSuccess) {
            context.read<IngredientPreferenceBloc>().add(
              IngredientPreferenceEvent.ingredientPreferencesListFetched(
                category: categoryType,
                refreshListWithOutLoader: true,
              ),
            );
          } else if (state is IngredientPreferenceLoadFail) {
            final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
              localizations: healthyLivingSharedLocalizations,
              exception: state.exception,
            );
            DSToast.show(
              context: context,
              title: errorMessage.title,
              leadingIconPath: DSIcons.icWarning,
            );
          } else if (state is SavePreferenceFail) {
            final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
              localizations: healthyLivingSharedLocalizations,
              exception: state.exception,
            );
            DSToast.show(
              context: context,
              title: errorMessage.title,
              leadingIconPath: DSIcons.icWarning,
            );
          }
        },
        listenWhen: (previous, current) {
          return current is SavePreferenceLoadSuccess ||
              current is IngredientPreferenceLoadFail;
        },
        buildWhen: (previous, current) {
          return current is LoadIngredientPreference ||
              current is IngredientPreferenceLoadInProgress ||
              current is SavePreferenceLoadSuccess ||
              current is SavePreferenceLoadInProgress;
        },
        builder: (context, state) {
          if (state is LoadIngredientPreference) {
            isSavingInProgress = false;
            avoidList = state.avoidList;
            preferList = state.preferList;
          } else if (state is SavePreferenceLoadInProgress) {
            isSavingInProgress = true;
          }

          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: context.dsSpacing.sp400,
                  ),
                  child: IngredientPreferenceTitleHeader(
                    title: localization.account_ingredientPreference,
                    onTapBack: onTapBack,
                    onTapInfo: onTapInfo,
                    iconKey: iconKey,
                  ),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: context.dsSpacing.sp400,
                        right: context.dsSpacing.sp400,
                        bottom: context.dsSpacing.sp400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp500,
                          ),
                          DSText(
                            text: IngredientPreferenceCategoryUtils.getTitle(
                              categoryType: categoryType,
                              localization: localization,
                            ),
                            textStyle: DSTextStyleType.primaryHeadingS,
                            textColor: context.dsColors.textPrimaryDefault,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          DSText(
                            text:
                                IngredientPreferenceCategoryUtils.getListDescription(
                                  categoryType: categoryType,
                                  localization: localization,
                                ),
                            textStyle: DSTextStyleType.primaryBodySRegular,
                            textColor: context.dsColors.textNeutralOnWhite,
                          ),
                          if (state is IngredientPreferenceLoadInProgress) ...{
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp600,
                            ),
                            IngredientSkeleton(),
                          } else ...{
                            if (avoidList.isNotEmpty) ...{
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp600,
                              ),
                              IngredientPreferenceListSectionHeader(
                                title:
                                    localization
                                        .account_ingredientPreference_avoidSectionTitle,
                                iconPath: DSIcons.icAvoidFilled,
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: avoidList.length,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return IngredientPreferenceListItemWidget(
                                    curatedIngredientPreferencesModel:
                                        avoidList[index],
                                    isLoading:
                                        state is SavePreferenceLoadInProgress &&
                                        state.index == index &&
                                        isSavingInProgress,
                                    onTap:
                                        state is SavePreferenceLoadInProgress &&
                                                state.index == index &&
                                                isSavingInProgress
                                            ? () {}
                                            : () {
                                              // savedPreferenceSuccess
                                              if (avoidList[index]
                                                      ?.userSelected ??
                                                  false) {
                                                context.read<IngredientPreferenceBloc>().add(
                                                  IngredientPreferenceEvent.deleteIngredientPreferences(
                                                    id:
                                                        avoidList[index]?.id ??
                                                        -1,
                                                    userSelected:
                                                        !(avoidList[index]
                                                                ?.userSelected ??
                                                            false),
                                                    listType:
                                                        (avoidList[index]
                                                                ?.listType ??
                                                            ""),
                                                    index: index,
                                                    userSelectionId:
                                                        avoidList[index]
                                                            ?.userSelectionId ??
                                                        -1,
                                                  ),
                                                );
                                              } else {
                                                context
                                                    .read<
                                                      IngredientPreferenceBloc
                                                    >()
                                                    .add(
                                                      IngredientPreferenceEvent.saveIngredientPreferences(
                                                        id:
                                                            avoidList[index]
                                                                ?.id ??
                                                            -1,
                                                        userSelected:
                                                            !(avoidList[index]
                                                                    ?.userSelected ??
                                                                false),
                                                        listType:
                                                            avoidList[index]
                                                                ?.listType ??
                                                            "",
                                                        index: index,
                                                      ),
                                                    );
                                              }
                                            },
                                  );
                                },
                                separatorBuilder: (
                                  BuildContext context,
                                  int index,
                                ) {
                                  return DSSpacingWidget.vertical(
                                    spacing: DSSpacing.sp500,
                                  );
                                },
                              ),
                            },

                            if (preferList.isNotEmpty) ...{
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp500,
                              ),
                              IngredientPreferenceListSectionHeader(
                                title:
                                    localization
                                        .account_ingredientPreference_preferSectionTitle,
                                iconPath: DSIcons.icPreferFilled,
                              ),
                              // KEY: TestKeys.ingredientPreferList
                              ListView.separated(
                                key: const Key('ingredient_prefer_list'),
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: preferList.length,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return IngredientPreferenceListItemWidget(
                                    curatedIngredientPreferencesModel:
                                        preferList[index],
                                    isLoading:
                                        state is SavePreferenceLoadInProgress &&
                                        state.index == index &&
                                        isSavingInProgress,
                                    onTap:
                                        state is SavePreferenceLoadInProgress &&
                                                isSavingInProgress
                                            ? () {}
                                            : () {
                                              if (preferList[index]
                                                      ?.userSelected ??
                                                  false) {
                                                context.read<IngredientPreferenceBloc>().add(
                                                  IngredientPreferenceEvent.deleteIngredientPreferences(
                                                    id:
                                                        preferList[index]?.id ??
                                                        -1,
                                                    userSelected:
                                                        !(preferList[index]
                                                                ?.userSelected ??
                                                            false),
                                                    listType:
                                                        (preferList[index]
                                                                ?.listType ??
                                                            ""),
                                                    index: index,
                                                    userSelectionId:
                                                        preferList[index]
                                                            ?.userSelectionId ??
                                                        -1,
                                                  ),
                                                );
                                              } else {
                                                context
                                                    .read<
                                                      IngredientPreferenceBloc
                                                    >()
                                                    .add(
                                                      IngredientPreferenceEvent.saveIngredientPreferences(
                                                        id:
                                                            preferList[index]
                                                                ?.id ??
                                                            -1,
                                                        userSelected:
                                                            !(preferList[index]
                                                                    ?.userSelected ??
                                                                false),
                                                        listType:
                                                            preferList[index]
                                                                ?.listType ??
                                                            "",
                                                        index: index,
                                                      ),
                                                    );
                                              }
                                            },
                                  );
                                },
                                separatorBuilder: (
                                  BuildContext context,
                                  int index,
                                ) {
                                  return DSSpacingWidget.vertical(
                                    spacing: DSSpacing.sp200,
                                  );
                                },
                              ),
                            },
                          },
                        ],
                      ),
                    ),
                  ),
                ),

                Visibility(
                  //Todo this buttons are hidden api accepting single id not []
                  visible: false,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: context.dsSpacing.sp500,
                      horizontal: context.dsSpacing.sp400,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: DSButtonPrimary.ghost(
                            text:
                                localization
                                    .account_ingredientPreference_cancel,
                            size: DSButtonSize.small,
                            onPressed: onTapCancel,
                          ),
                        ),
                        DSSpacingWidget.horizontal(spacing: 20),
                        Expanded(
                          child: DSButtonPrimary.fill(
                            text:
                                localization.account_ingredientPreference_save,
                            size: DSButtonSize.small,
                            onPressed: onTapSave,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
