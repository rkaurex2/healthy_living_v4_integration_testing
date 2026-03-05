import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_state.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/add_to_list_skeleton.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/create_list_widget.dart';
import 'package:network/network.dart';

class AddToListWidget extends StatefulWidget {
  final List<UserListItemsAttributesModel> userListItemsAttributesModel;
  final Function(bool)? isAddToListSuccessCallback;

  const AddToListWidget({
    required this.userListItemsAttributesModel,
    this.isAddToListSuccessCallback,
    super.key,
  });

  @override
  State<AddToListWidget> createState() => _AddToListWidgetState();
}

class _AddToListWidgetState extends State<AddToListWidget> {
  int selectedMyListIndex = -1;
  String? selectedListName;

  List<UserListModel?>? userListModelList;

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return SafeArea(
      child: BlocProvider(
        create: (_) => injector.get<AddToListBloc>()..add(GetSavedList()),
        child: BlocConsumer<AddToListBloc, AddToListState>(
          listenWhen: (previous, current) {
            return current is AddToListSuccess ||
                current is AddToListFailureState ||
                current is LoadSavedListFailure;
          },
          listener: (context, state) {
            final AddToListBloc productAddToListBloc =
                context.read<AddToListBloc>();

            if (state is AddToListSuccess) {
              widget.isAddToListSuccessCallback?.call(true);
              if (state.isSingleAdded) {
                DSToast.show(
                  context: context,
                  leadingIconPath: DSIcons.icCircleCheck,
                  title:
                      healthyLivingSharedLocalizations
                          .general_addToList_alreadyAddedToList,
                );
              } else {
                DSToast.show(
                  context: context,
                  leadingIconPath: DSIcons.icCircleCheck,
                  title: healthyLivingSharedLocalizations
                      .general_addToList_addedTo(
                        state.userListModel?.name ?? "",
                      ),
                );
              }
              context.pop();
            } else if (state is LoadSavedListFailure) {
              final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
                localizations: healthyLivingSharedLocalizations,
                exception: state.exception,
              );

              DSToast.show(
                context: context,
                title: errorMessage.title,
                caption: "",
                leadingIconPath: DSIcons.icWarning,
              );
            } else if (state is AddToListFailureState) {
              productAddToListBloc.add(AddToListEvent.initialized());

              if (state.exception is NetworkException) {
                NetworkException exception =
                    state.exception as NetworkException;

                if (exception.statusCode ==
                    ApiStatusCodeConstants.statusCode422) {
                  DSToast.show(
                    context: context,
                    title:
                        healthyLivingSharedLocalizations
                            .general_addToList_alreadyAddedToList,
                    caption: "",
                    leadingIconPath: DSIcons.icWarning,
                  );
                } else {
                  final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
                    localizations: healthyLivingSharedLocalizations,
                    exception: state.exception,
                  );

                  DSToast.show(
                    context: context,
                    title: errorMessage.title,
                    caption: "",
                    leadingIconPath: DSIcons.icWarning,
                  );
                }
              }
            }
          },
          buildWhen: (previous, current) {
            return current is UpdateSelectedIndex ||
                current is GetUserListSuccess ||
                current is AddToListDoneButtonLoading ||
                current is AddToListInitialState ||
                current is DetailLoading ||
                current is LoadSavedListFailure;
          },
          builder: (context, state) {
            final AddToListBloc productAddToListBloc =
                context.read<AddToListBloc>();

            if (state is GetUserListSuccess && state.userListModel != null) {
              userListModelList = state.userListModel ?? [];
            } else if (state is UpdateSelectedIndex) {
              selectedMyListIndex = state.index;
            }
            return Container(
              decoration: BoxDecoration(
                color: context.dsColors.surfacePrimaryDefault,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(context.dsRadius.rd500),
                  topLeft: Radius.circular(context.dsRadius.rd500),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeaderWithTitle(
                    leadIcon: DSIcons.icClose,
                    title: healthyLivingSharedLocalizations.general_addToList,
                    onTapLeadIcon: () {
                      widget.isAddToListSuccessCallback?.call(false);
                      context.pop();
                    },
                    textColor: context.dsColors.surfaceNeutralContainerWhite,
                    iconColor: context.dsColors.textOnSurfaceDefault,
                  ),

                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: context.dsSpacing.sp400,
                    ),
                    child: DSButtonPrimary(
                      onPressed: () {
                        context.pop();

                        DSBottomSheetWidget.showBottomSheet(
                          context: context,
                          useRootNavigator: false,
                          isDismissible: false,
                          isFullScreen: true,
                          child: CreateListWidget(
                            isDarkTheme: true,
                            userListItemsAttributesModel:
                                widget.userListItemsAttributesModel,
                            isCreateListSuccessCallback: (value) {
                              widget.isAddToListSuccessCallback?.call(value);
                            },
                          ),
                        );
                      },
                      text:
                          healthyLivingSharedLocalizations
                              .general_list_createAList,
                      leadingIconPath: DSIcons.icAdd,
                      size: DSButtonSize.small,
                      state: DSButtonState.normal,
                      type: DSButtonType.outline,
                      useCustomLeadingIconColor: true,
                      leadingIconColor: context.dsColors.iconOnSurfaceDefault,
                      outlineColor: context.dsColors.strokeNeutralDefault,
                      textColor: context.dsColors.textOnSurfaceDefault,
                    ),
                  ),
                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),

                  Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.4,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (state is DetailLoading) ...{
                          AddToListSkeleton(),
                        } else if (state is LoadSavedListFailure) ...{
                          Expanded(
                            child: Center(
                              child: DSText(
                                text:
                                    healthyLivingSharedLocalizations
                                        .general_errorMessage_somethingWentWrong,
                                textStyle: DSTextStyleType.primarySubHeadingM,
                                textColor: context.dsColors.textNeutralOnWhite,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        } else ...{
                          Expanded(
                            child:
                                (userListModelList ?? []).isEmpty
                                    ? Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: context.dsSpacing.sp500,
                                        vertical: context.dsSpacing.sp700,
                                      ),
                                      child: Column(
                                        children: [
                                          DSImage.asset(
                                            DSIcons
                                                .icMyItemIngredientIllustration,
                                            width: context.dsSpacing.sp900,
                                            height: context.dsSpacing.sp900,
                                          ),
                                          DSSpacingWidget.vertical(
                                            spacing: context.dsSpacing.sp300,
                                          ),

                                          DSText(
                                            text:
                                                healthyLivingSharedLocalizations
                                                    .healthyLivingShared_lists_youDontHaveAnyList,
                                            textStyle:
                                                DSTextStyleType
                                                    .primarySubHeadingM,
                                            textColor:
                                                context
                                                    .dsColors
                                                    .surfaceNeutralContainerWhite,
                                            textAlign: TextAlign.center,
                                          ),
                                          DSSpacingWidget.vertical(
                                            spacing: context.dsSpacing.sp200,
                                          ),

                                          DSText(
                                            text:
                                                healthyLivingSharedLocalizations
                                                    .healthyLivingShared_lists_keepTrackProducts,
                                            textStyle:
                                                DSTextStyleType
                                                    .primaryBodySMedium,
                                            textColor:
                                                context
                                                    .dsColors
                                                    .surfaceNeutralContainerWhite,
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    )
                                    : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: context.dsSpacing.sp400,
                                          ),
                                          child: DSText(
                                            text:
                                                healthyLivingSharedLocalizations
                                                    .general_addToList_orChooseWhichList,
                                            textStyle:
                                                DSTextStyleType
                                                    .primaryBodyMRegular,
                                            textColor:
                                                context
                                                    .dsColors
                                                    .textOnSurfaceDefault,
                                          ),
                                        ),

                                        Expanded(
                                          child: ListView.separated(
                                            padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  context.dsSpacing.sp400,
                                              vertical: context.dsSpacing.sp400,
                                            ),
                                            separatorBuilder: (context, index) {
                                              return DSSpacingWidget.vertical(
                                                spacing:
                                                    context.dsSpacing.sp200,
                                              );
                                            },
                                            itemBuilder: (context, index) {
                                              int itemCount =
                                                  userListModelList?[index]
                                                      ?.itemsCount ??
                                                  0;
                                              return GestureDetector(
                                                onTap: () {
                                                  selectedListName =
                                                      userListModelList?[index]
                                                          ?.name;
                                                  productAddToListBloc.add(
                                                    AddToListEvent.onChangeListItemIndex(
                                                      index: index,
                                                    ),
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: () {
                                                      return selectedMyListIndex ==
                                                              index
                                                          ? context
                                                              .dsColors
                                                              .surfacePrimaryLight1
                                                          : null;
                                                    }(),
                                                    border: Border.all(
                                                      color:
                                                          context
                                                              .dsColors
                                                              .strokeNeutralDefault,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          context
                                                              .dsRadius
                                                              .rd300,
                                                        ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                          vertical:
                                                              context
                                                                  .dsSpacing
                                                                  .sp300,
                                                          horizontal:
                                                              context
                                                                  .dsSpacing
                                                                  .sp400,
                                                        ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              DSText(
                                                                text:
                                                                    userListModelList?[index]
                                                                        ?.name ??
                                                                    "",
                                                                textStyle:
                                                                    DSTextStyleType
                                                                        .primarySubHeadingM,
                                                                textColor: () {
                                                                  return selectedMyListIndex ==
                                                                          index
                                                                      ? context
                                                                          .dsColors
                                                                          .textNeutralOnWhite
                                                                      : context
                                                                          .dsColors
                                                                          .textOnSurfaceDefault;
                                                                }(),
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                              DSText(
                                                                text: HealthyLivingSharedUtils.getListProductsItemCount(
                                                                  healthyLivingSharedLocalizations:
                                                                      healthyLivingSharedLocalizations,
                                                                  itemCount:
                                                                      itemCount,
                                                                ),
                                                                textStyle:
                                                                    DSTextStyleType
                                                                        .primaryCaption,
                                                                textColor: () {
                                                                  return selectedMyListIndex ==
                                                                          index
                                                                      ? context
                                                                          .dsColors
                                                                          .textNeutralSecondary
                                                                      : context
                                                                          .dsColors
                                                                          .textOnSurfaceSecondary;
                                                                }(),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        if (selectedMyListIndex ==
                                                            index) ...{
                                                          DSImage.asset(
                                                            DSIcons.icCheck,
                                                            width:
                                                                context
                                                                    .dsSizes
                                                                    .sz500,
                                                            height:
                                                                context
                                                                    .dsSizes
                                                                    .sz500,
                                                            color:
                                                                context
                                                                    .dsColors
                                                                    .iconPrimary,
                                                          ),
                                                        },
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                            itemCount:
                                                userListModelList?.length ?? 0,
                                          ),
                                        ),

                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                context
                                                    .dsColors
                                                    .surfacePrimaryDefault,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withValues(
                                                  alpha: 0.1,
                                                ),
                                                offset: Offset(0, -2),
                                                blurRadius:
                                                    context.dsRadius.rd200,
                                                spreadRadius: 0,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(
                                              context.dsSpacing.sp400,
                                            ),
                                            child: DSButtonSecondary(
                                              state: () {
                                                if (state
                                                    is UpdateSelectedIndex) {
                                                  return DSButtonState.normal;
                                                }
                                                if (state
                                                    is AddToListDoneButtonLoading) {
                                                  return DSButtonState.loading;
                                                } else {
                                                  return DSButtonState.disabled;
                                                }
                                              }(),
                                              onPressed: () {
                                                productAddToListBloc.add(
                                                  AddToListEvent.onDoneButtonPressed(
                                                    listId:
                                                        (userListModelList?[selectedMyListIndex]
                                                                    ?.id ??
                                                                0)
                                                            .toString(),
                                                    userListItemsAttributesModel:
                                                        widget
                                                            .userListItemsAttributesModel,
                                                    listName:
                                                        userListModelList?[selectedMyListIndex]
                                                            ?.name ??
                                                        "",
                                                  ),
                                                );
                                              },
                                              text:
                                                  "${healthyLivingSharedLocalizations.general_addToList}${(widget.userListItemsAttributesModel.isNotEmpty) ? " (${widget.userListItemsAttributesModel.length})" : ""}",
                                              size: DSButtonSize.small,
                                              textStyle:
                                                  DSTextStyleType
                                                      .primaryButtonLRegular,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                          ),
                        },
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
