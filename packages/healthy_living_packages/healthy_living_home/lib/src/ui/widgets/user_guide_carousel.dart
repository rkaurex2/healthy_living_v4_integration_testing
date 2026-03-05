import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/model/user_guide_carousel_content_model.dart';
import 'package:healthy_living_home/src/utils/home_screen_utils.dart';
import 'package:healthy_living_home/src/utils/user_guide_slide_type_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class GuidesCarousel extends StatelessWidget {
  const GuidesCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final HealthyLivingHomeLocalizations localizations =
        HealthyLivingHomeLocalizations.of(context)!;
    final List<UserGuideCarouselContentModel> items =
        HomeScreenUtils.getUserGuideCarouselContent(
          localizations,
          context.dsColors,
        );
    final scaleFactor = MediaQuery.textScalerOf(context).scale(1.0);
    final baseHeight = 350.0;
    final dynamicHeight = baseHeight * scaleFactor.clamp(1.0, 1.2);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp500),
      child: DSCarousel(
        isIndicatorOverlap: true,
        isAutoPlay: true,
        height: dynamicHeight,
        slidesList:
            items.map((item) {
              return HomeCarouselListItem(
                title: item.title,
                onTapSlide: () {
                  _navigateToWebView(
                    item.userGuideSlideType,
                    localizations,
                    context,
                  );
                },
                subtitle: DSText.rich(
                  textSpan: TextSpan(
                    text: item.mainText,
                    children: [
                      TextSpan(
                        text: "\n\n${item.learnMoreText}",
                        style:
                            DSTextStyleType.primaryBodySMedium.getTextStyle(),
                      ),
                    ],
                  ),
                  textStyle: DSTextStyleType.primaryBodySRegular,
                  textColor: context.dsColors.textOnSurfaceDefault,
                  textAlign: TextAlign.center,
                ),
                backgroundColor: item.backgroundColor,
                overlayColor: item.overlayColor,
                backgroundImage: item.backgroundImage,
                badge:
                    item.badge != null
                        ? DSImage.asset(
                          item.badge!,
                          width: 72,
                          height: 72,
                          color: context.dsColors.iconOnSurfaceDefault,
                        )
                        : null,
              );
            }).toList(),
      ),
    );
  }

  void _navigateToWebView(
    UserGuideSlideType? userGuideSlideTypeModel,
    HealthyLivingHomeLocalizations localizations,
    BuildContext context,
  ) {
    HealthyLivingSharedLocalizations sharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    switch (userGuideSlideTypeModel) {
      case UserGuideSlideType.verified:
        context.pushNamed(
          AppRoutes.webView.name,
          queryParameters:
              WebviewScreenParams(
                title:
                    sharedLocalizations
                        .healthyLivingShared_userGuide_ewgVerified,
                url: UrlConstants.ewgVerified,
              ).toQueryParameters(),
        );
      case UserGuideSlideType.foodScores:
        context.pushNamed(
          AppRoutes.webView.name,
          queryParameters:
              WebviewScreenParams(
                title: localizations.home_userGuide_food,
                url: UrlConstants.foodScores,
              ).toQueryParameters(),
        );
      case UserGuideSlideType.pcp:
        context.pushNamed(
          AppRoutes.webView.name,
          queryParameters:
              WebviewScreenParams(
                title: localizations.home_userGuide_personalCare,
                url: UrlConstants.personalCareScores,
              ).toQueryParameters(),
        );
      case UserGuideSlideType.cleaners:
        context.pushNamed(
          AppRoutes.webView.name,
          queryParameters:
              WebviewScreenParams(
                title: localizations.home_userGuide_cleaners,
                url: UrlConstants.cleanersScores,
              ).toQueryParameters(),
        );
      case UserGuideSlideType.blank:
        return;
      case UserGuideSlideType.sunscreens:
        context.pushNamed(
          AppRoutes.webView.name,
          queryParameters:
              WebviewScreenParams(
                title: localizations.home_userGuide_sunscreens,
                url: UrlConstants.sunscreenScores,
              ).toQueryParameters(),
        );
      case null:
        throw UnimplementedError();
    }
  }
}
