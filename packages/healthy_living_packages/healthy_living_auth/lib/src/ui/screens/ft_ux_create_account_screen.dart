import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FtUxCreateAccountScreen extends StatelessWidget {
  const FtUxCreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    return BlocProvider(
      create: (_) => injector.get<FtUxBloc>(),
      child: Scaffold(
        backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
        body: BlocListener<FtUxBloc, FtUxState>(
          listenWhen: (_, current) {
            return current is ContinueAsGuestSuccess;
          },
          listener: (context, state) {
            if (state is ContinueAsGuestSuccess) {
              context.read<AppBloc>().add(AppEvent.refreshUserLogin());
              context.go(AppRoutes.home.path);
            }
          },
          child: Builder(
            builder: (builderContext) {
              return SafeArea(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(context.dsSpacing.sp400),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                DSImage.asset(
                                  DSIcons.icHealthyLivingLogoOneLine,
                                  width: 145,
                                  height: 29.8,
                                ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    DSSpacingWidget.vertical(
                                      spacing: context.dsSpacing.sp700,
                                    ),

                                    DSText(
                                      text:
                                          localization
                                              .auth_walkthrough_createYouAccount,
                                      textStyle: DSTextStyleType.secondaryHeadingL,
                                      textColor:
                                          context.dsColors.textPrimaryDefault,
                                      textAlign: TextAlign.center,
                                    ),
                                    DSSpacingWidget.vertical(
                                      spacing: context.dsSpacing.sp700,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 52.0,
                                      ),
                                      child: AspectRatio(
                                        aspectRatio: 1.25,
                                        child: DSImage.asset(
                                          DSIcons.icFtUXCreateAccount,
                                        ),
                                      ),
                                    ),
                                    DSSpacingWidget.vertical(
                                      spacing: context.dsSpacing.sp600,
                                    ),
                                    DSText(
                                      text:
                                          localization
                                              .auth_walkthrough_personalizeYourExperience,
                                      textStyle:
                                          DSTextStyleType.primaryBodyMRegular,
                                      textColor:
                                          context.dsColors.textNeutralOnWhite,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),

                            DSSpacingWidget.vertical(spacing: 70),
                          ],
                        ),
                      ),
                    ),
                    SliverFillRemaining(
                      hasScrollBody: false,
                      child: Padding(
                        padding: EdgeInsets.all(context.dsSpacing.sp400),
                        child: Column(
                          children: [
                            // KEY: TestKeys.createAccountButton
                            DSButtonSecondary(
                              key: const Key('create_account_button'),
                              text: localization.auth_walkthrough_createAnAccount,
                              size: DSButtonSize.small,
                              onPressed:
                                  () => _navigateToAuthScreen(
                                    context: context,
                                    isLogin: false,
                                  ),
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp200,
                            ),
                            DSButtonPrimary(
                              text: localization.auth_walkthrough_signIn,
                              size: DSButtonSize.small,
                              type: DSButtonType.outline,
                              onPressed:
                                  () => _navigateToAuthScreen(
                                    context: context,
                                    isLogin: true,
                                  ),
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp400,
                            ),
                            // KEY: TestKeys.continueAsGuestButton
                            InkWell(
                              key: const Key('continue_as_guest_button'),
                              onTap: () {
                                builderContext.read<FtUxBloc>().add(
                                  FtUxEvent.continueAsGuestTapped(),
                                );
                              },
                              child: DSText(
                                text:
                                    localization.auth_walkthrough_continueAsAGuest,
                                textStyle: DSTextStyleType.primaryBodySRegular,
                                textColor: context.dsColors.textPrimaryDefault,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateToAuthScreen({
    required BuildContext context,
    required bool isLogin,
  }) {
    context.pushNamed(
      AppRoutes.authScreen.name,
      queryParameters: AuthScreenParams(isLogin: isLogin).toQueryParameters(),
    );
  }
}
