import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

class MyItemCreateListSheetView extends StatefulWidget {
  final MyItemsBloc myItemsBloc;
  final VoidCallback callback;

  const MyItemCreateListSheetView({
    required this.callback,
    required this.myItemsBloc,
    super.key,
  });

  @override
  State<MyItemCreateListSheetView> createState() =>
      _MyItemCreateListSheetViewState();
}

class _MyItemCreateListSheetViewState extends State<MyItemCreateListSheetView> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return BlocProvider.value(
      value: widget.myItemsBloc,
      child: BlocListener<MyItemsBloc, MyItemsState>(
        listenWhen: (previous, current) {
          return current is OnCreateListSuccess ||
              current is OnFailureCreateList;
        },
        listener: (context, state) {
          if (state is OnFailureCreateList) {
            if (state.createListException is NetworkException) {
              NetworkException exception =
                  state.createListException as NetworkException;

              if (exception.statusCode ==
                  ApiStatusCodeConstants.statusCode422) {
                DSToast.show(
                  context: context,
                  title:
                      healthyLivingSharedLocalizations
                          .healthyLivingShared_lists_listAlreadyExist,
                  caption: "",
                  leadingIconPath: DSIcons.icWarning,
                );
              } else {
                final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
                  localizations: healthyLivingSharedLocalizations,
                  exception: state.createListException,
                );

                DSToast.show(
                  context: context,
                  title: errorMessage.title,
                  caption: errorMessage.message,
                  leadingIconPath: DSIcons.icWarning,
                );
              }
            }
          } else if (state is OnCreateListSuccess) {
            context.pop();
            context
                .pushNamed(
                  AppRoutes.myItemMyListDetail.name,
                  extra: UserListScreenParams(listId: state.listId),
                )
                .then((value) {
                  widget.callback.call();
                });
          }
        },
        child: BlocBuilder<MyItemsBloc, MyItemsState>(
          buildWhen: (previous, current) {
            return current is ValidateCreateButton ||
                current is IsLoadingCreateListButton ||
                current is OnFailureCreateList;
          },
          builder: (context, state) {
            return CreateListSheetWidget(
              title: healthyLivingSharedLocalizations.general_list_nameYourList,
              hintText: healthyLivingSharedLocalizations.general_list_newList,
              buttonText:
                  healthyLivingSharedLocalizations.general_list_createList,
              onCreateButtonTap: (nameList) {
                widget.myItemsBloc.add(
                  MyItemsEvent.onCreateListButtonPressed(listName: nameList),
                );
              },
              dsButtonState: _mapStateToButtonState(state),
              onChanged: (value) {
                widget.myItemsBloc.add(
                  MyItemsEvent.onNameListTextChanged(listName: value),
                );
              },
              onFieldSubmitted: (value) {
                if (value.isValidValue) {
                  widget.myItemsBloc.add(
                    MyItemsEvent.onCreateListButtonPressed(listName: value),
                  );
                }
              },
              onClose: () {
                widget.myItemsBloc.add(
                  MyItemsEvent.onNameListTextChanged(listName: ""),
                );
                context.pop();
              },
            );
          },
        ),
      ),
    );
  }

  DSButtonState _mapStateToButtonState(MyItemsState state) {
    if (state is IsLoadingCreateListButton) {
      return DSButtonState.loading;
    } else if (state is ValidateCreateButton && state.isCreateButtonEnable) {
      return DSButtonState.normal;
    } else if (state is OnFailureCreateList) {
      return DSButtonState.normal;
    } else {
      return DSButtonState.disabled;
    }
  }
}
