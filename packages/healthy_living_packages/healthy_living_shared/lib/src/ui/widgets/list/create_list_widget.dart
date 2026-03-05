import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_state.dart';
import 'package:network/network.dart';

class CreateListWidget extends StatefulWidget {
  final List<UserListItemsAttributesModel> userListItemsAttributesModel;
  final bool isDarkTheme;
  final Function(bool)? isCreateListSuccessCallback;
  const CreateListWidget({
    required this.userListItemsAttributesModel,
    required this.isCreateListSuccessCallback,
    this.isDarkTheme = false,
    super.key,
  });

  @override
  State<CreateListWidget> createState() => _CreateListWidgetState();
}

class _CreateListWidgetState extends State<CreateListWidget> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return BlocProvider(
      create: (_) => injector.get<CreateListBloc>(),
      child: BlocListener<CreateListBloc, CreateListState>(
        listenWhen: (previous, current) {
          return current is OnSuccessCreateList ||
              current is OnFailureCreateList ||
              current is OnExistCreateListSheetState ||
              current is AddToListSuccess ||
              current is AddToListFailure;
        },
        listener: (context, state) {
          final createListBloc = context.read<CreateListBloc>();
          if (state is OnFailureCreateList) {
            NetworkException exception =
                state.createListException as NetworkException;

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
                    exception: state.createListException,
                  );

              DSToast.show(
                context: context,
                title: errorMessage,
                caption: "",
                leadingIconPath: DSIcons.icWarning,
              );
            }
          } else if (state is OnSuccessCreateList) {
            createListBloc.add(
              ProductAddToList(
                userListItemsAttributesModel:
                    widget.userListItemsAttributesModel,
                listId: state.listId,
                listName: state.listName,
              ),
            );
          } else if (state is AddToListSuccess) {
            widget.isCreateListSuccessCallback?.call(true);
            context.pop();

            context.pushNamed(
              AppRoutes.myItemMyListDetail.name,
              extra: UserListScreenParams(listId: state.listId),
            );
          } else if (state is AddToListFailure) {
            final errorMessage = HealthyLivingSharedUtils.getServerErrorMessage(
              localizations: healthyLivingSharedLocalizations,
              exception: state.exception,
            );

            DSToast.show(
              context: context,
              title: errorMessage,
              caption: "",
              leadingIconPath: DSIcons.icWarning,
            );
          } else if (state is OnExistCreateListSheetState) {
            widget.isCreateListSuccessCallback?.call(false);
            context.pop();
            DSBottomSheetWidget.showBottomSheet(
              context: context,
              isDismissible: false,
              useRootNavigator: false,
              isFullScreen: true,
              child: AddToListWidget(
                userListItemsAttributesModel:
                    widget.userListItemsAttributesModel,
                isAddToListSuccessCallback: widget.isCreateListSuccessCallback,
              ),
            );
          }
        },
        child: BlocBuilder<CreateListBloc, CreateListState>(
          buildWhen: (previous, current) {
            return current is ValidateCreateButton ||
                current is IsLoadingCreateListButton ||
                current is OnFailureCreateList;
          },
          builder: (context, state) {
            final productDetailCreateListBloc = context.read<CreateListBloc>();
            return CreateListSheetWidget(
              isDarkTheme: widget.isDarkTheme,
              title: healthyLivingSharedLocalizations.general_list_createAList,
              hintText: healthyLivingSharedLocalizations.general_list_newList,
              buttonText:
                  healthyLivingSharedLocalizations.general_list_startListWith,
              onCreateButtonTap: (nameList) {
                productDetailCreateListBloc.add(
                  CreateListEvent.onCreateListButtonPressed(listName: nameList),
                );
              },
              dsButtonState: _mapStateToButtonState(state),
              onChanged: (value) {
                productDetailCreateListBloc.add(
                  CreateListEvent.onNameListTextChanged(listName: value),
                );
              },
              onFieldSubmitted: (value) {
                if (value.isValidValue) {
                  productDetailCreateListBloc.add(
                    CreateListEvent.onCreateListButtonPressed(listName: value),
                  );
                }
              },
              onClose: () {
                productDetailCreateListBloc.add(
                  CreateListEvent.onExistCreateListSheet(isSuccess: false),
                );
              },
            );
          },
        ),
      ),
    );
  }

  DSButtonState _mapStateToButtonState(CreateListState state) {
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
