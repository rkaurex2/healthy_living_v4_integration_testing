import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ViewYourListsWidget extends StatelessWidget {
  final String title;
  final List<UserListModel?> userListModelList;
  final Function(int) onTap;
  const ViewYourListsWidget({
    required this.title,
    required this.userListModelList,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final itemsToShow = userListModelList.take(10).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: HeaderTitleType(
            text: title,
            type: ListTitleHorizontalHeaderType.withLinkType,
            onPressed: () => context.goNamed(AppRoutes.myItems.name),
            padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: context.dsSpacing.sp400),
          child: Row(
            children: List.generate(itemsToShow.length, (index) {
              return Container(
                margin: EdgeInsets.only(
                  right: index < itemsToShow.length - 1
                      ? context.dsSpacing.sp200
                      : context.dsSpacing.sp400,
                ),
                child: YourListHorizontalItemCardWidget(
                  userListModel: itemsToShow[index],
                  borderRadius: context.dsRadius.rd200,
                  onTap: () => onTap(index),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
