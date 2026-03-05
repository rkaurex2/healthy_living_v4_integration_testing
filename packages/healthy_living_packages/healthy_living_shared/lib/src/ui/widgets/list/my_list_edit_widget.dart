import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_events.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_state.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_options_widget.dart';
import 'package:network/network.dart';

class MyListEditWidget extends StatefulWidget {
  final MyListDetailBloc myListDetailBloc;
  final String listName;
  final String listId;
  final VoidCallback? onCallBack;

  const MyListEditWidget({
    required this.myListDetailBloc,
    required this.listName,
    required this.listId,
    this.onCallBack,
    super.key,
  });

  @override
  State<MyListEditWidget> createState() => _MyListEditWidgetState();
}

class _MyListEditWidgetState extends State<MyListEditWidget> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return BlocProvider.value(
      value: widget.myListDetailBloc,
      child: BlocConsumer<MyListDetailBloc, MyListDetailState>(
        listenWhen: (previous, current) {
          return current is OnEditListSuccess || current is OnEditListFailure;
        },
        listener: (context, state) {
          if (state is OnEditListSuccess) {
            context.pop();
            widget.onCallBack?.call();
          } else if (state is OnEditListFailure) {
            NetworkException exception = state.exception as NetworkException;

            if (exception.statusCode == ApiStatusCodeConstants.statusCode422) {
              DSToast.show(
                context: context,
                title:
                    healthyLivingSharedLocalizations
                        .healthyLivingShared_lists_listAlreadyExist,
                caption: "",
                leadingIconPath: DSIcons.icWarning,
              );
            } else {
              final errorMessage =
                  HealthyLivingSharedUtils.getServerErrorMessage(
                    localizations: healthyLivingSharedLocalizations,
                    exception: state.exception,
                  );

              DSToast.show(
                context: context,
                title: errorMessage,
                caption: "",
                leadingIconPath: DSIcons.icWarning,
              );
            }
          }
        },
        buildWhen: (previous, current) {
          return current is ValidateEditListButton ||
              current is IsLoadingEditListButton ||
              current is OnEditListFailure;
        },
        builder: (context, state) {
          return SafeArea(
            child: CreateListSheetWidget(
              title:
                  healthyLivingSharedLocalizations
                      .healthyLivingShared_lists_editListName,
              controllerText: widget.listName,
              hintText:
                  healthyLivingSharedLocalizations.general_list_enterListName,
              buttonText:
                  healthyLivingSharedLocalizations.general_list_editListSave,
              onCreateButtonTap: (nameList) {
                widget.myListDetailBloc.add(
                  MyListDetailEvent.renameList(
                    listName: nameList,
                    listId: widget.listId,
                  ),
                );
              },
              dsButtonState: _mapStateToButtonState(state),
              onChanged: (value) {
                widget.myListDetailBloc.add(
                  MyListDetailEvent.onChangeListName(listName: value),
                );
              },
              onFieldSubmitted: (value) {
                if (value.isValidValue) {
                  widget.myListDetailBloc.add(
                    MyListDetailEvent.renameList(
                      listId: widget.listId,
                      listName: value,
                    ),
                  );
                }
              },
              onClose: () {
                context.pop();
                DSBottomSheetWidget.showBottomSheet(
                  context: context,
                  isFullScreen: true,
                  isDismissible: true,
                  child: MyListOptionsWidget(
                    listName: widget.listName,
                    myListDetailBloc: widget.myListDetailBloc,
                    listId: widget.listId,
                    onCallBack: widget.onCallBack,
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }

  DSButtonState _mapStateToButtonState(MyListDetailState state) {
    if (state is IsLoadingEditListButton) {
      return DSButtonState.loading;
    } else if (state is ValidateEditListButton && state.isEditButtonEnable) {
      return DSButtonState.normal;
    } else if (state is ValidateEditListButton && !state.isEditButtonEnable) {
      return DSButtonState.disabled;
    } else if (state is OnEditListFailure) {
      return DSButtonState.normal;
    } else {
      return DSButtonState.normal;
    }
  }
}
