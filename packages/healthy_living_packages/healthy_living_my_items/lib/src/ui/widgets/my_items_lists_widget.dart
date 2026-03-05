import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_state.dart';
import 'package:healthy_living_my_items/src/ui/widgets/lists_item_card_widget.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_item_create_list_sheet_view.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_item_search_bar.dart';
import 'package:healthy_living_my_items/src/ui/widgets/my_items_list_skeleton_widget.dart';
import 'package:healthy_living_my_items/src/ui/widgets/no_my_list_widget.dart';
import 'package:healthy_living_my_items/src/ui/widgets/search_bar_delegate_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyItemsListsWidget extends StatefulWidget {
  const MyItemsListsWidget({super.key});

  @override
  State<MyItemsListsWidget> createState() => _MyItemsListsWidgetState();
}

class _MyItemsListsWidgetState extends State<MyItemsListsWidget> {
  late MyItemsBloc bloc;
  List<UserListModel> userListModelList = [];

  @override
  void initState() {
    super.initState();

    bloc = context.read<MyItemsBloc>();
    bloc.add(GetUserList());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) {
        return current is RefreshBottomTabs;
      },
      builder: (context, state) {
        if (state is RefreshBottomTabs &&
            state.isRefresh &&
            state.bottomBarRefreshPage == BottomBarRefreshPage.myItemLists) {
          context.read<AppBloc>().add(
            AppEvent.currentBottomBarIndex(
              isRefresh: false,
              bottomBarRefreshPage: BottomBarRefreshPage.myItemLists,
            ),
          );
          bloc.add(GetUserList());
        }
        return BlocConsumer<MyItemsBloc, MyItemsState>(
          listener: (context, state) {
            if (state is OnFailureUserList) {
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
          },
          listenWhen: (previous, current) {
            return current is OnFailureUserList;
          },
          buildWhen: (previous, current) {
            return current is OnLoadUserList ||
                current is UserListLoading ||
                current is OnFailureUserList;
          },
          builder: (context, state) {
            bloc = context.read<MyItemsBloc>();
            if (state is OnLoadUserList) {
              userListModelList = state.userListModelList;
            } else if (state is UserListLoading) {
              return MyItemsListSkeletonWidget();
            } else if (state is OnFailureUserList) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp500,
                  vertical: context.dsSpacing.sp700,
                ),
                child: Column(
                  children: [
                    DSText(
                      text:
                          healthyLivingSharedLocalizations.general_failedToLoad,
                      textStyle: DSTextStyleType.primarySubHeadingM,
                      textColor: context.dsColors.textNeutralOnWhite,
                      textAlign: TextAlign.center,
                    ),
                    DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),

                    DSText(
                      text:
                          healthyLivingSharedLocalizations
                              .general_errorMessage_somethingWentWrong,
                      textStyle: DSTextStyleType.primaryBodySMedium,
                      textColor: context.dsColors.textNeutralOnWhite,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }
            return Column(
              children: [
                Expanded(
                  child:
                      userListModelList.isEmpty
                          ? NoMyListWidget()
                          : CustomScrollView(
                            slivers: [
                              SliverPersistentHeader(
                                floating: true,
                                pinned: false,
                                delegate: SearchBarDelegate(
                                  //Todo hide searchbar for current requirements
                                  child: Visibility(
                                    visible: false,
                                    child: MyItemSearchBar(),
                                  ),
                                ),
                              ),

                              SliverPadding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.dsSpacing.sp300,
                                  vertical: context.dsSpacing.sp200,
                                ),
                                sliver: SliverList(
                                  delegate: SliverChildBuilderDelegate((
                                    context,
                                    index,
                                  ) {
                                    final item = userListModelList[index];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      onTap: () {
                                        context
                                            .pushNamed(
                                              AppRoutes.myItemMyListDetail.name,
                                              extra: UserListScreenParams(
                                                listId:
                                                    (userListModelList[index]
                                                            .id)
                                                        .toString(),
                                              ),
                                            )
                                            .then((value) {
                                              //To refresh list in case of update at myItemMyListDetail screen.
                                              if (value != null &&
                                                  value == true) {
                                                bloc.add(GetUserList());
                                              }
                                            });
                                      },
                                      child: ListsItemCardWidget(
                                        userListModel: item,
                                      ),
                                    );
                                  }, childCount: userListModelList.length),
                                ),
                              ),
                            ],
                          ),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: context.dsColors.surfaceNeutralContainerWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        offset: Offset(0, -2),
                        blurRadius: context.dsRadius.rd200,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    // KEY: TestKeys.createListButton
                    child: DSButtonPrimary(
                      key: const Key('create_list_button'),
                      onPressed: () {
                        DSBottomSheetWidget.showBottomSheet(
                          context: context,
                          useRootNavigator: false,
                          isDismissible: false,
                          isFullScreen: true,
                          child: MyItemCreateListSheetView(
                            myItemsBloc: bloc,
                            callback: () {
                              bloc.add(GetUserList());
                            },
                          ),
                        );
                      },
                      text:
                          healthyLivingSharedLocalizations
                              .general_list_createAList,
                      size: DSButtonSize.small,
                      leadingIconPath: DSIcons.icAdd,
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
