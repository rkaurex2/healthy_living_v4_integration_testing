import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/guides_list_item.dart';

class GuidesScreen extends StatelessWidget {
 final GuidesScreenParams  guidesScreenParam;
  const GuidesScreen({required this.guidesScreenParam, super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localization =
        HealthyLivingSharedLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithTitle(
              leadIcon: DSIcons.icArrowLeft,
              title: guidesScreenParam.title,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
            Expanded(
              child: Container(
                color: context.dsColors.textOnSurfaceSecondary,
                child: ListView.separated(
                  padding: EdgeInsets.all(context.dsSpacing.sp400),
                  itemCount: guidesScreenParam.items.length,
                  itemBuilder: (context, index) {
                    return GuidesListItem(
                      ewgGuidesUiModel: guidesScreenParam.items[index],
                      onTap: () {
                        context.pushNamed(
                          AppRoutes.ewgGuidesWebview.name,
                          queryParameters:
                              WebviewScreenParams(
                                title: guidesScreenParam.items[index].webViewTitle,
                                url: guidesScreenParam.items[index].url,
                              ).toQueryParameters(),
                        );
                      },
                      imageWidth: guidesScreenParam.items[index].imageWidth,
                      imageHeight: guidesScreenParam.items[index].imageHeight,
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return DSSpacingWidget.vertical(spacing: DSSpacing.sp200);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
