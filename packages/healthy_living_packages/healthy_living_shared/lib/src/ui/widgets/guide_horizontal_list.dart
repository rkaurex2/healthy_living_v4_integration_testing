import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/guide_horizontal_list_item.dart';

class GuideHorizontalList extends StatelessWidget {
  final List<HomeGuidesUiModel> items;
  final String title;
  final VoidCallback onPressed;

  const GuideHorizontalList({
    required this.items,
    required this.title,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
          child: HeaderTitleType(
            text: title,
            type: ListTitleHorizontalHeaderType.withLinkType,
            onPressed: onPressed,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        SizedBox(
          height: 203,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: 5,
            separatorBuilder:
                (_, __) => DSSpacingWidget.horizontal(
                  spacing: context.dsSpacing.sp200,
                ),

            itemBuilder: (context, index) {
              final item = items[index];
              return GuideHorizontalListItem(
                homeGuidesUiModel: item,
                onTap: () {
                  context.pushNamed(
                    AppRoutes.ewgGuidesWebview.name,
                    queryParameters:
                        WebviewScreenParams(
                          title: items[index].webViewTitle,
                          url: items[index].url,
                        ).toQueryParameters(),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
