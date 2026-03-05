import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_event.dart';
import 'package:healthy_living_auth/src/ui/widgets/walk_through_page.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FtUxWalkThroughContentScreen extends StatefulWidget {
  const FtUxWalkThroughContentScreen({super.key});

  @override
  State<FtUxWalkThroughContentScreen> createState() =>
      _FtUxWalkThroughScreenState();
}

class _FtUxWalkThroughScreenState extends State<FtUxWalkThroughContentScreen> {
  DSCarouselController dsCarouselController = DSCarouselController();

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return DSCarousel(
              carouselController: dsCarouselController,
              height: constraints.maxHeight,
              onPageChangeComplete: () {
                context.go(AppRoutes.ftUxCreateAccount.path);
              },
              inActiveIndicatorColor: context.dsColors.surfaceNeutralContainer4,
              isAutoPlay: false,
              slidesList: [
                WalkthroughPage.regular(
                  title: localization.auth_walkthrough_aFreshLook,
                  description: localization.auth_walkthrough_aFreshLookDes,
                  middleImage: DSIcons.icFreshLook,
                  onTapNext: () {
                    dsCarouselController.nextPage();
                  },
                ),
                WalkthroughPage.regular(
                  title: localization.auth_walkthrough_trustedTransparent,
                  description: localization.auth_walkthrough_ewgScientist,
                  middleImage: DSIcons.icScienceBackend,
                  onTapNext: () {
                    dsCarouselController.nextPage();
                  },
                ),
                WalkthroughPage.regular(
                  title: localization.auth_walkthrough_scanProductsToShop,
                  description:
                  localization.auth_walkthrough_scanProductsToInstantly,
                  middleImage: DSIcons.icWalkThroughScan,
                  onTapNext: () {
                    context.read<FtUxBloc>().add(
                      const FtUxEvent.setFtUxCompleted(true),
                    );
                    dsCarouselController.nextPage();
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}