import 'package:design_system/design_system.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/bloc/home_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/home_event.dart';
import 'package:healthy_living_home/src/ui/bloc/home_state.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:flutter/material.dart';

class GetStartedCreateListWidget extends StatefulWidget {
  final FocusNode? focusNode;
  const GetStartedCreateListWidget({this.focusNode, super.key});

  @override
  State<GetStartedCreateListWidget> createState() =>
      _GetStartedCreateListWidgetState();
}

class _GetStartedCreateListWidgetState
    extends State<GetStartedCreateListWidget> {
  final TextEditingController listNameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final HealthyLivingHomeLocalizations localizations =
          HealthyLivingHomeLocalizations.of(context)!;
      listNameController.text = localizations.home_ewgGuides_myFavoriteProducts;
    });
  }

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final HealthyLivingHomeLocalizations localizations =
        HealthyLivingHomeLocalizations.of(context)!;
    return BlocConsumer<HomeBloc, HomeState>(
      listenWhen: (previous, current) {
        return [
          CreateListInFailure,
          CreateListSuccess,
        ].contains(current.runtimeType);
      },
      listener: (context, state) {
        if (state is CreateListSuccess) {
          context
              .pushNamed(
                AppRoutes.homeMyListDetail.name,
                extra: UserListScreenParams(listId: (state.listId).toString()),
              )
              .then((value) {
                context.read<YourListBloc>().add(YourListEvent.yourListFetched());
              });
        }
      },
      buildWhen: (previous, current) {
        return [
          CreateListInProgress,
          ValidateCreateButton,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        final bloc = context.read<HomeBloc>();
        return Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralBackgroundMedium,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),
          margin: EdgeInsets.all(context.dsSpacing.sp400),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: context.dsSpacing.sp500,
              horizontal: context.dsSpacing.sp400,
            ),
            child: Column(
              spacing: context.dsSpacing.sp500,
              children: [
                Column(
                  spacing: context.dsSpacing.sp400,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: DSText(
                            text: localizations.home_list_getStartedWithLists,
                            textStyle: DSTextStyleType.primaryHeadingM,
                            textColor: context.dsColors.textPrimaryDefault,
                          ),
                        ),
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp100,
                        ),
                        DSImage.asset(
                          DSIcons.icLists,
                          width: context.dsSizes.sz500,
                          height: context.dsSizes.sz500,
                          color: context.dsColors.iconNeutralFade,
                        ),
                      ],
                    ),

                    DSText(
                      text: localizations.home_list_trackAndManageYour,
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.surfacePrimaryPress,
                    ),
                  ],
                ),

                //Todo need to confirm its dsinput or dstext
                DSTextInput(
                  focusNode: widget.focusNode,
                  hintText:
                      healthyLivingSharedLocalizations
                          .general_list_enterListName,
                  controller: listNameController,
                  onFieldSubmitted: (value) {
                    if (value.isValidValue) {
                      bloc.add(
                        HomeEvent.createYourList(name: listNameController.text),
                      );
                    }
                  },
                  onChanged: (value) {
                    bloc.add(
                      HomeEvent.onNameListTextChanged(
                        listName: listNameController.text,
                      ),
                    );
                  },
                  caption:
                      healthyLivingSharedLocalizations
                          .healthyLivingShared_list_maxLength,
                  maxLength: IntegerConstants.createListNameLength,
                ),

                DSButtonPrimary(
                  text: localizations.home_list_createYourFirstList,
                  onPressed: () {
                    bloc.add(
                      HomeEvent.createYourList(name: listNameController.text),
                    );
                  },
                  state: _mapStateToButtonState(state),
                  size: DSButtonSize.small,
                  trailingIconPath: DSIcons.icArrowRight,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  DSButtonState _mapStateToButtonState(HomeState state) {
    if (state is CreateListInProgress) {
      return DSButtonState.loading;
    } else if (state is ValidateCreateButton && state.isCreateButtonEnable) {
      return DSButtonState.normal;
    } else if (state is ValidateCreateButton && !state.isCreateButtonEnable) {
      return DSButtonState.disabled;
    } else {
      return DSButtonState.normal;
    }
  }
}
