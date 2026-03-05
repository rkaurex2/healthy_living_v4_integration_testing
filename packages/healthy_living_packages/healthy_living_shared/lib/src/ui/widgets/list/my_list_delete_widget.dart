import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_events.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_state.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_options_widget.dart';

class MyListDeleteWidget extends StatefulWidget {
  final String listName;
  final String listId;
  final MyListDetailBloc myListDetailBloc;
  final VoidCallback? onCallBack;
  const MyListDeleteWidget({
    required this.listName,
    required this.listId,
    required this.myListDetailBloc,
    required this.onCallBack,
    super.key,
  });

  @override
  State<MyListDeleteWidget> createState() => _DeleteMyListWidgetState();
}

class _DeleteMyListWidgetState extends State<MyListDeleteWidget> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return BlocProvider.value(
      value: widget.myListDetailBloc,
      child: BlocConsumer<MyListDetailBloc, MyListDetailState>(
        listener: (context, state) {
          if (state is OnDeleteListSuccess) {
            context.pop();
            widget.onCallBack?.call();
          } else if (state is OnDeleteListFailure) {
            final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
              localizations: healthyLivingSharedLocalizations,
              exception: state.exception,
            );

            DSToast.show(
              context: context,
              title: errorMessage.message,
              leadingIconPath: DSIcons.icWarning,
            );
          }
        },
        listenWhen: (previous, current) {
          return current is OnDeleteListSuccess ||
              current is OnDeleteListFailure;
        },
        buildWhen: (previous, current) {
          return current is IsLoadingDeleteListButton ||
              current is OnDeleteListFailure;
        },
        builder: (context, state) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                HeaderWithTitle(
                  leadIcon: DSIcons.icClose,
                  title:
                      healthyLivingSharedLocalizations
                          .healthyLivingShared_lists_deleteList,
                  onTapLeadIcon: () {
                    context.pop();
                    DSBottomSheetWidget.showBottomSheet(
                      context: context,
                      isFullScreen: true,
                      isDismissible: true,
                      child: MyListOptionsWidget(
                        listName: widget.listName,
                        myListDetailBloc: widget.myListDetailBloc,
                        listId: widget.listId,
                      ),
                    );
                  },
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
                Padding(
                  padding: EdgeInsets.all(context.dsSpacing.sp500),
                  child: DSText.rich(
                    textSpan: TextSpan(
                      text:
                          healthyLivingSharedLocalizations
                              .healthyLivingShared_lists_deleteListConfirmation,
                      children: [
                        TextSpan(
                          text: healthyLivingSharedLocalizations
                              .healthyLivingShared_lists_deleteListName(
                                widget.listName,
                              ),
                          style:
                              DSTextStyleType.primaryBodyMMedium.getTextStyle(),
                        ),
                      ],
                    ),
                    textStyle: DSTextStyleType.primaryBodyMRegular,
                    textColor: context.dsColors.surfacePrimaryPress,
                  ),
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
                DSDivider(),
                Padding(
                  padding: EdgeInsets.all(context.dsSpacing.sp400),
                  child: Row(
                    children: [
                      Expanded(
                        child: DSButtonPrimary(
                          textStyle: DSTextStyleType.primaryButtonLRegular,
                          onPressed: () {
                            context.pop();
                          },
                          text: healthyLivingSharedLocalizations.general_cancel,
                          type: DSButtonType.ghost,
                          size: DSButtonSize.small,
                          state: DSButtonState.normal,
                        ),
                      ),
                      DSSpacingWidget.horizontal(
                        spacing: context.dsSpacing.sp300,
                      ),
                      Expanded(
                        // KEY: TestKeys.confirmDeleteButton
                        child: DSButtonPrimary(
                          key: const Key('confirm_delete_button'),
                          textStyle: DSTextStyleType.primaryButtonLRegular,
                          onPressed: () {
                            //clear the back bottom sheet first
                            widget.myListDetailBloc.add(
                              MyListDetailEvent.deleteList(
                                listId: widget.listId,
                              ),
                            );
                          },
                          text: healthyLivingSharedLocalizations.general_delete,
                          size: DSButtonSize.small,
                          state: _mapStateToButtonState(state),
                        ),
                      ),
                    ],
                  ),
                ),
                DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
              ],
            ),
          );
        },
      ),
    );
  }

  DSButtonState _mapStateToButtonState(MyListDetailState state) {
    if (state is IsLoadingDeleteListButton) {
      return DSButtonState.loading;
    } else {
      return DSButtonState.normal;
    }
  }
}
