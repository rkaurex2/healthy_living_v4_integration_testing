
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class LetsGetStartedContentScreen extends StatelessWidget {
  const LetsGetStartedContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;

    return BlocConsumer<FtUxBloc, FtUxState>(
      listenWhen: (_, currentState) => currentState is FtUxComplete,
      listener: (context, state) {
        if (state is FtUxComplete) {
          context.go(AppRoutes.ftUxCreateAccount.path);
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: context.dsSpacing.sp500,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: context.dsSpacing.sp500,
                          ),
                          child: Column(
                            children: [
                              DSImage.asset(DSIcons.icLetsGetStarted),
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp700,
                              ),
                              DSText(
                                text: localization
                                    .auth_walkthrough_smarterChoices,
                                textStyle:
                                DSTextStyleType.secondaryHeadingL,
                                textColor: context
                                    .dsColors.textOnSurfaceDefault,
                                textAlign: TextAlign.center,
                              ),
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp400,
                              ),
                              DSText(
                                text: localization
                                    .auth_walkthrough_scanEverydayProducts,
                                textStyle:
                                DSTextStyleType.primaryBodyMRegular,
                                textAlign: TextAlign.center,
                                textColor: context
                                    .dsColors.textOnSurfaceDefault,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: context.dsSpacing.sp400,
                          ),
                          child: Column(
                            children: [
                              DSButtonSecondary.fill(
                                text: localization
                                    .auth_walkthrough_letsGetStarted,
                                size: DSButtonSize.small,
                                onPressed: () {
                                  context.go(
                                    AppRoutes.ftUxWalkThrough.path,
                                  );
                                },
                              ),
                              DSSpacingWidget.vertical(
                                spacing: context.dsSpacing.sp200,
                              ),
                              DSButtonPrimary.ghost(
                                text: localization
                                    .auth_walkthrough_skip,
                                size: DSButtonSize.small,
                                textColor: context.dsColors
                                    .surfaceNeutralBackgroundWhite,
                                onPressed: () {
                                  context.read<FtUxBloc>().add(
                                    const FtUxEvent
                                        .setFtUxCompleted(true),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}