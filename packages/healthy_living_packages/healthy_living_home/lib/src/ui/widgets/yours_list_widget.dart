import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_state.dart';
import 'package:healthy_living_home/src/ui/widgets/get_started_create_list_widget.dart';
import 'package:healthy_living_home/src/ui/widgets/view_your_lists_widget.dart';
import 'package:healthy_living_home/src/ui/widgets/your_list_skeleton_widget.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class YoursListWidget extends StatelessWidget {
  final FocusNode? focusNode;
  const YoursListWidget({this.focusNode, super.key});

  @override
  Widget build(BuildContext context) {
    final homeLocalizations = HealthyLivingHomeLocalizations.of(context)!;
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) {
        return current is RefreshBottomTabs;
      },
      builder: (bContext, state) {
        if (state is RefreshBottomTabs &&
            state.isRefresh &&
            state.bottomBarRefreshPage == BottomBarRefreshPage.homeLists) {
          bContext.read<AppBloc>().add(
            AppEvent.currentBottomBarIndex(
              isRefresh: false,
              bottomBarRefreshPage: BottomBarRefreshPage.homeLists,
            ),
          );
          bContext.read<YourListBloc>().add(YourListEvent.yourListFetched());
        }
        return BlocBuilder<YourListBloc, YourListState>(
          buildWhen: (previous, current) {
            return [
              YourListLoadFailure,
              YourListLoadInProgress,
              YourListLoadSuccess,
            ].contains(current.runtimeType);
          },
          builder: (builderContext, state) {
            final yourListBloc = builderContext.read<YourListBloc>();

            if (state is YourListLoadInProgress) {
              return YourListSkeletonWidget();
            } else if (state is YourListLoadSuccess) {
              if (state.userListModelList.isValidList) {
                return ViewYourListsWidget(
                  userListModelList: state.userListModelList,
                  title: homeLocalizations.home_list_yourLists,
                  onTap: (index) {
                    context
                        .pushNamed(
                          AppRoutes.homeMyListDetail.name,
                          extra: UserListScreenParams(
                            listId:
                                (state.userListModelList[index]?.id ?? 0)
                                    .toString(),
                          ),
                        )
                        .then((value) {
                          if (value != null && value == true) {
                            yourListBloc.add(YourListEvent.yourListFetched());
                          }
                        });
                  },
                );
              } else {
                return GetStartedCreateListWidget(focusNode: focusNode);
              }
            } else if (state is YourListLoadFailure) {
              // Todo will show the failure case widget
              return SizedBox.shrink();
            } else {
              return SizedBox.shrink();
            }
          },
        );
      },
    );
  }
}
