import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

class SignInContentScreen extends StatefulWidget {
  final bool hideBackButton;
  final String openedFrom;
  final int? myListTapIndex;

  const SignInContentScreen({
    required this.hideBackButton,
    required this.openedFrom,
    this.myListTapIndex,
    super.key,
  });

  @override
  State<SignInContentScreen> createState() => _SignInContentScreenState();
}

class _SignInContentScreenState extends State<SignInContentScreen> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _passwordFocus.addListener(() {
      if (!_passwordFocus.hasFocus) {
        context.read<SignInBloc>().add(
          SignInEvent.passwordFocusChanged(_passwordController.text),
        );
      }
    });

    _emailFocus.addListener(() {
      if (!_emailFocus.hasFocus) {
        if (_emailController.text.isNotEmpty) {
          context.read<SignInBloc>().add(
            SignInEvent.emailFocusChanged(_emailController.text),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TopBarHeader(
                        centerIcon: DSIcons.icHealthyLivingLogoOneLine,
                        hideBackButton: widget.hideBackButton,
                      ),
                      Padding(
                        padding: EdgeInsets.all(context.dsSpacing.sp400),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DSText(
                              text: localization.auth_sign_in_welcome_back,
                              textStyle: DSTextStyleType.primaryHeadingS,
                              textColor: context.dsColors.textNeutralOnWhite,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp600,
                            ),

                            BlocBuilder<SignInBloc, SignInState>(
                              builder: (context, state) {
                                // KEY: TestKeys.signInEmailField
                                return DSTextInput(
                                  key: const Key('sign_in_email_field'),
                                  focusNode: _emailFocus,
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  label:
                                      healthyLivingSharedLocalizations
                                          .healthyLivingShared_signup_email,
                                  state: state.emailTextInputState,
                                  caption:
                                      state.emailTextInputState ==
                                              DSTextInputState.error
                                          ? healthyLivingSharedLocalizations
                                              .healthyLivingShared_signup_mustEnterAValidEmail
                                          : "",
                                  onChanged:
                                      (val) => context.read<SignInBloc>().add(
                                        SignInEvent.onTextChange(
                                          email: val,
                                          password: _passwordController.text,
                                        ),
                                      ),
                                );
                              },
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp400,
                            ),

                            BlocBuilder<SignInBloc, SignInState>(
                              builder: (context, state) {
                                // KEY: TestKeys.signInPasswordField
                                return DSTextInput(
                                  key: const Key('sign_in_password_field'),
                                  focusNode: _passwordFocus,
                                  controller: _passwordController,
                                  label: localization.auth_signup_password,
                                  state: DSTextInputState.defaultState,
                                  isPasswordInput: true,
                                  onChanged:
                                      (val) => context.read<SignInBloc>().add(
                                        SignInEvent.onTextChange(
                                          email: _emailController.text,
                                          password: val,
                                        ),
                                      ),
                                );
                              },
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp400,
                            ),

                            // KEY: TestKeys.forgotPasswordButton
                            DSText.rich(
                              key: const Key('forgot_password_button'),
                              textSpan: TextSpan(
                                text: localization.auth_sign_in_forgotPassword,
                                style: DSTextStyleType.primaryLinkS
                                    .getTextStyle()
                                    .copyWith(
                                      decoration: TextDecoration.underline,
                                      decorationColor:
                                          context.dsColors.textPrimaryLink,
                                    ),

                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        context.push(
                                          AppRoutes.forgotPassword.path,
                                        );
                                      },
                              ),
                              textStyle: DSTextStyleType.primaryLinkS,
                              textColor: context.dsColors.textPrimaryLink,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BlocConsumer<SignInBloc, SignInState>(
                listenWhen:
                    (previous, current) =>
                        current.status == AuthScreenStatus.success ||
                        current.status == AuthScreenStatus.failure,
                listener: (context, state) {
                  if (state.status == AuthScreenStatus.success) {
                    final appBloc = context.read<AppBloc>();
                    appBloc.add(AppEvent.refreshUserLogin());
                    HealthyLivingSharedUtils.authNavigationHandler(
                      context: context,
                      openedFrom: widget.openedFrom,
                      myListTapIndex:
                          widget.myListTapIndex ??
                          IntegerConstants.myListTapListsIndex,
                    );
                  } else if (state.status == AuthScreenStatus.failure) {
                    FocusScope.of(context).unfocus();
                    NetworkException network =
                        state.signInException as NetworkException;
                    if (network.statusCode ==
                        ApiStatusCodeConstants.statusCode422) {
                      DSToast.show(
                        context: context,
                        title:
                            localization.auth_signIn_emailIdOrPasswordInCorrect,
                        leadingIconPath: DSIcons.icWarning,
                      );
                    } else {
                      final errorMessage =
                          HealthyLivingSharedUtils.getErrorInfo(
                            localizations:
                                HealthyLivingSharedLocalizations.of(context)!,
                            exception: network,
                          );
                      DSToast.show(
                        context: context,
                        title: errorMessage.title,
                        leadingIconPath: DSIcons.icWarning,
                      );
                    }
                  }
                },
                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    // KEY: TestKeys.signInSubmitButton
                    child: DSButtonPrimary(
                      key: const Key('sign_in_submit_button'),
                      text: localization.auth_walkthrough_signIn,
                      size: DSButtonSize.small,
                      state:
                          state.status == AuthScreenStatus.loading
                              ? DSButtonState.loading
                              : (state.isSignInButtonDisabled ?? true)
                              ? DSButtonState.disabled
                              : DSButtonState.normal,
                      onPressed:
                          ((state.isSignInButtonDisabled ?? true) ||
                                  state.status == AuthScreenStatus.loading)
                              ? null
                              : () => context.read<SignInBloc>().add(
                                SignInEvent.signInButtonPressed(
                                  email: state.email ?? "",
                                  password: state.password ?? "",
                                ),
                              ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
