import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/widgets/social_button.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_auth/src/utils/auth_utils.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AuthContentScreen extends StatefulWidget {
  final String openedFrom;
  final int? myListTapIndex;

  const AuthContentScreen({
    required this.openedFrom,
    super.key,
    this.myListTapIndex,
  });

  @override
  State<AuthContentScreen> createState() => _AuthContentScreenState();
}

class _AuthContentScreenState extends State<AuthContentScreen> {
  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final authScreenBloc = context.read<AuthSocialLoginBloc>();

    return Column(
      children: [
        TopBarHeader(
          hideBackButton: (widget.openedFrom == StringConstants.resetPassword),
        ),
        Expanded(
          child: BlocConsumer<AuthSocialLoginBloc, AuthSocialLoginState>(
            listenWhen: _authSocialLoginBlocListenWhen,
            listener: (context, state) {
              if (state.platformSignInException != null) {
                final exceptionMessage = AuthUtils.getAppleSignInErrorMessage(
                  localizations: localization,
                  healthyLivingSharedLocalizations:
                      healthyLivingSharedLocalizations,
                  exception: state.platformSignInException!,
                );

                DSToast.show(
                  context: context,
                  title: exceptionMessage.title,
                  caption: exceptionMessage.message,
                  leadingIconPath: DSIcons.icWarning,
                );
              } else if (state.googleSocialSignInException != null) {
                final exceptionMessage = AuthUtils.getGoogleSignInErrorMessage(
                  healthyLivingSharedLocalizations:
                      healthyLivingSharedLocalizations,
                  healthyLivingAuthLocalizations: localization,
                  exception: state.googleSocialSignInException!,
                );
                DSToast.show(
                  context: context,
                  title: exceptionMessage.title,
                  caption: exceptionMessage.message,
                  leadingIconPath: DSIcons.icWarning,
                );
              } else if (state.socialSignInException != null) {
                final errorMessage = HealthyLivingSharedUtils.getErrorInfo(
                  localizations: healthyLivingSharedLocalizations,
                  exception: state.socialSignInException,
                );

                DSToast.show(
                  context: context,
                  title: errorMessage.title,
                  caption: errorMessage.message,
                  leadingIconPath: DSIcons.icWarning,
                );
              } else if (state.socialAuthToken != null &&
                  state.authProvider != null) {
                authScreenBloc.add(
                  AuthSocialLoginEvent.socialTokenReceived(
                    token: state.socialAuthToken!,
                    provider: state.authProvider!.value,
                  ),
                );
              } else if (state.status == AuthScreenStatus.success) {
                if (state.isInitialLogin == true) {
                  context.go(
                    AppRoutes.newsletter.path,
                    extra: NewsletterScreenExtraParams(
                      email: state.email ?? "",
                      openedFrom: widget.openedFrom,
                      isOpenFromSocialLogin: true,
                    ),
                  );
                } else {
                  final appBloc = context.read<AppBloc>();
                  appBloc.add(AppEvent.refreshUserLogin());
                  HealthyLivingSharedUtils.authNavigationHandler(
                    context: context,
                    openedFrom: widget.openedFrom,
                    myListTapIndex:
                        widget.myListTapIndex ??
                        IntegerConstants.myListTapListsIndex,
                  );
                }
              }
            },
            buildWhen: (prevState, currentState) {
              return prevState.mode != currentState.mode;
            },
            builder: (context, state) {
              final isLogin = authScreenBloc.isSignInMode;

              final title =
                  isLogin
                      ? localization.auth_sign_in_signInToYourAccount
                      : localization.auth_signup_createYourAccount;
              final subtitle =
                  localization.auth_sign_in_personalizeYourExperience;
              final emailText =
                  isLogin
                      ? localization.auth_sign_in_withEmail
                      : localization.auth_signup_joinWithEmail;
              final togglePrompt =
                  isLogin
                      ? localization.auth_sign_in_donTHaveAnAccount
                      : localization.auth_signup_alreadyHaveAnAccount;
              final toggleActionText =
                  isLogin
                      ? localization.auth_signup_join
                      : localization.auth_walkthrough_signIn;

              return Padding(
                padding: EdgeInsets.all(context.dsSpacing.sp400),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          DSText(
                            text: title,
                            textStyle: DSTextStyleType.secondaryHeadingL,
                            textColor: context.dsColors.textNeutralOnWhite,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          DSText(
                            text: subtitle,
                            textStyle: DSTextStyleType.primaryBodyMRegular,
                            textColor: context.dsColors.textPrimaryDefault,
                          ),
                        ],
                      ),
                      DSSpacingWidget.vertical(
                        spacing: context.dsSpacing.sp500,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: context.dsSpacing.sp500,
                          bottom: context.dsSpacing.sp1000,
                        ),
                        child: DSImage.asset(
                          DSIcons.icHealthyLivingLogoShape,
                          height: 200,
                          width: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Column(
                        children: [
                          SocialButtons(
                            isLogin: isLogin,
                            appleOnTap:
                                () => _handleAuth(
                                  authProvider: AuthProvider.apple,
                                  isLogin: isLogin,
                                  context: context,
                                ),
                            googleOnTap:
                                () => _handleAuth(
                                  authProvider:
                                      Platform.isAndroid
                                          ? AuthProvider.googleAndroid
                                          : AuthProvider.google,
                                  isLogin: isLogin,
                                  context: context,
                                ),
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 1,
                                width: 10,
                                color: context.dsColors.textNeutralDisabled,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: context.dsSpacing.sp100,
                                ),
                                child: DSText(
                                  text: localization.auth_or_text,
                                  textStyle:
                                      DSTextStyleType.primaryBodySRegular,
                                  textColor:
                                      context.dsColors.textNeutralOnWhite,
                                ),
                              ),
                              Container(
                                height: 1,
                                width: 10,
                                color: context.dsColors.textNeutralDisabled,
                              ),
                            ],
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp200,
                          ),
                          DSButtonPrimary(
                            type: DSButtonType.outline,
                            size: DSButtonSize.small,
                            leadingIconPath: DSIcons.icEmail,
                            onPressed:
                                () => _handleAuth(
                                  authProvider: AuthProvider.email,
                                  isLogin: isLogin,
                                  context: context,
                                ),
                            leadingIconSize: DSButtonIconSize.medium,
                            text: emailText,
                            useCustomLeadingIconColor: true,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          AuthLinkTextFooter(
                            description: toggleActionText,
                            title: togglePrompt,
                            isLogin: isLogin,
                            onPressed: () {
                              authScreenBloc.add(
                                AuthSocialLoginEvent.authModeToggled(),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  void _handleAuth({
    required AuthProvider authProvider,
    required bool isLogin,
    required BuildContext context,
  }) {
    final authScreenBloc = context.read<AuthSocialLoginBloc>();

    if (authProvider == AuthProvider.email) {
      isLogin
          ? context.push(
            AppRoutes.signIn.path,
            extra: {
              StringConstants.openedFrom: widget.openedFrom,
              StringConstants.myListTapIndex: widget.myListTapIndex.toString(),
            },
          )
          : context.push(
            AppRoutes.signUp.path,
            extra: {
              StringConstants.openedFrom: widget.openedFrom,
              StringConstants.myListTapIndex: widget.myListTapIndex.toString(),
            },
          );
    } else if (authProvider == AuthProvider.googleAndroid ||
        authProvider == AuthProvider.google) {
      authScreenBloc.add(
        AuthSocialLoginEvent.googleSignInPressed(authProvider: authProvider),
      );
    } else if (authProvider == AuthProvider.apple) {
      authScreenBloc.add(
        AuthSocialLoginEvent.appleSignInPressed(authProvider: authProvider),
      );
    }
  }

  bool _authSocialLoginBlocListenWhen(
    AuthSocialLoginState prevState,
    AuthSocialLoginState currentState,
  ) {
    return currentState.status != AuthScreenStatus.loading &&
        (prevState.mode == currentState.mode ||
            prevState.platformSignInException !=
                currentState.platformSignInException ||
            prevState.socialAuthToken != currentState.socialAuthToken ||
            prevState.socialSignInException !=
                currentState.socialSignInException ||
            prevState.status != currentState.status ||
            prevState.googleSocialSignInException !=
                currentState.googleSocialSignInException);
  }
}
