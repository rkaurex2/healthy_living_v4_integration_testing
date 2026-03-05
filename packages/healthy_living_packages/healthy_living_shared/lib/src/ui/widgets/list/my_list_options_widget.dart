import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_events.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_options_items_widgets.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_edit_widget.dart';

class MyListOptionsWidget extends StatefulWidget {
  final MyListDetailBloc myListDetailBloc;
  final String listName;
  final String listId;
  final VoidCallback? onCallBack;
  final VoidCallback? onPopScreenCallback;

  const MyListOptionsWidget({
    required this.myListDetailBloc,
    required this.listName,
    required this.listId,
    this.onCallBack,
    this.onPopScreenCallback,
    super.key,
  });

  @override
  State<MyListOptionsWidget> createState() => _MyListOptionsWidgetState();
}

class _MyListOptionsWidgetState extends State<MyListOptionsWidget> {
  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return SafeArea(
      bottom: true,
      top: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderWithTitle(
            leadIcon: DSIcons.icClose,
            title:
                healthyLivingSharedLocalizations
                    .healthyLivingShared_lists_listOptions,
            onTapLeadIcon: () {
              context.pop();
            },
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
          // KEY: TestKeys.renameListButton
          MyListOptionsRowItem(
            key: const Key('rename_list_button'),
            iconPath: DSIcons.icPen,
            title:
                healthyLivingSharedLocalizations
                    .healthyLivingShared_lists_editListName
                    .toTitleCase(),
            onTap: () {
              context.pop();
              DSBottomSheetWidget.showBottomSheet(
                context: context,
                isFullScreen: true,
                isDismissible: false,
                child: MyListEditWidget(
                  listName: widget.listName,
                  myListDetailBloc: widget.myListDetailBloc,
                  listId: widget.listId,
                  onCallBack: widget.onCallBack,
                ),
              );
            },
          ),
          MyListOptionsRowItem(
            iconPath: DSIcons.icCircleMinus,
            title:
                healthyLivingSharedLocalizations
                    .healthyLivingShared_lists_removeProductsList,
            onTap: () {
              context.pop();
              widget.myListDetailBloc.add(
                MyListDetailEvent.productSelectionActivate(
                  isSelectionActivate: true,
                ),
              );
            },
          ),
          // KEY: TestKeys.shareListButton
          MyListOptionsRowItem(
            key: const Key('share_list_button'),
            iconPath: DSIcons.icShare,
            title:
                healthyLivingSharedLocalizations
                    .healthyLivingShared_lists_shareList,
            onTap: () {
              context.pop();
              widget.myListDetailBloc.add(
                MyListDetailEvent.shareList(
                  listId: widget.listId,
                  listName: widget.listName,
                  messageTitle: healthyLivingSharedLocalizations
                      .healthyLivingShared_deepLink_shareListTitle(
                        widget.listName,
                      ),
                  messageText: healthyLivingSharedLocalizations
                      .healthyLivingShared_deepLink_shareListMessage(
                        widget.listName,
                      ),
                  sharingTitle:
                      healthyLivingSharedLocalizations
                          .healthyLivingShared_deepLink_shareListSheetTitle,
                ),
              );
            },
          ),
          DSDivider(),
          // KEY: TestKeys.deleteListButton
          MyListOptionsRowItem(
            key: const Key('delete_list_button'),
            iconPath: DSIcons.icDelete,
            title:
                healthyLivingSharedLocalizations
                    .healthyLivingShared_lists_deleteList,
            onTap: () {
              context.pop();
              DSBottomSheetWidget.showBottomSheet(
                context: context,
                isFullScreen: true,
                isDismissible: false,
                child: MyListDeleteWidget(
                  listName: widget.listName,
                  listId: widget.listId,
                  myListDetailBloc: widget.myListDetailBloc,
                  onCallBack: widget.onPopScreenCallback,
                ),
              );
            },
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp300),
        ],
      ),
    );
  }
}
