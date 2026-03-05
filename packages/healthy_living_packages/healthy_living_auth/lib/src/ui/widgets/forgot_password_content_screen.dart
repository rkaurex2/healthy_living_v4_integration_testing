import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_state.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ForgotPasswordContentScreen extends StatefulWidget {
  const ForgotPasswordContentScreen({super.key});

  @override
  State<ForgotPasswordContentScreen> createState() =>
      _ForgotPasswordContentScreenState();
}

class _ForgotPasswordContentScreenState
    extends State<ForgotPasswordContentScreen> {
  final FocusNode _emailFocus = FocusNode();
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _emailFocus.addListener(() {
      if (!_emailFocus.hasFocus) {
        if (_emailController.text.isNotEmpty) {
          context.read<ForgotPasswordBloc>().add(
            ForgotPasswordEvent.emailChanged(_emailController.text.trim()),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
            listenWhen:
                (previous, current) =>
                    current is ForgotPasswordSuccess ||
                    current is ForgotPasswordFailure,
            listener: (context, state) {
              if (state is ForgotPasswordSuccess) {
                DSToast.show(
                  context: context,
                  title: state.successData?.message ?? "",
                );
                context.pushNamed(
                  AppRoutes.checkYourEmail.name,
                  queryParameters: {
                    StringConstants.emailExtraParamKey: state.email,
                  },
                );
              } else if (state is ForgotPasswordFailure) {
                final errorMessage =
                    HealthyLivingSharedUtils.getServerErrorMessage(
                      localizations: healthyLivingSharedLocalization,
                      exception: state.exception,
                    );

                DSToast.show(context: context, title: errorMessage);
              }
            },
            buildWhen: (previous, current) {
              if (previous is ForgotPasswordFormState &&
                  current is ForgotPasswordFormState) {
                return previous.email != current.email ||
                    previous.emailState != current.emailState;
              }
              return true;
            },
            builder: (context, state) {
              final forgotPasswordBloc = context.read<ForgotPasswordBloc>();
              final isLoading = state is ForgotPasswordLoading;
              final formState =
                  state is ForgotPasswordFormState
                      ? state
                      : ForgotPasswordFormState(
                        email: '',
                        emailState: DSTextInputState.defaultState,
                        isFormValid: false,
                      );
              return Column(
                children: [
                  TopBarHeader(centerIcon: DSIcons.icHealthyLivingLogoOneLine),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(context.dsSpacing.sp400),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DSText(
                              text:
                                  localization
                                      .auth_forgotPassword_forgotYourPassword,
                              textStyle: DSTextStyleType.primaryHeadingS,
                              textColor: context.dsColors.textNeutralOnWhite,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp100,
                            ),
                            DSText(
                              text:
                                  localization
                                      .auth_forgotPassword_forgotYourPasswordContent,
                              textStyle: DSTextStyleType.primaryBodySRegular,
                              textColor: context.dsColors.textNeutralSecondary,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp600,
                            ),

                            // Email
                            // KEY: TestKeys.forgotEmailField
                            DSTextInput(
                              key: const Key('forgot_email_field'),
                              focusNode: _emailFocus,
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              label:
                                  healthyLivingSharedLocalization
                                      .healthyLivingShared_signup_email,
                              state:
                                  formState.emailState ??
                                  DSTextInputState.defaultState,
                              caption:
                                  formState.emailState == DSTextInputState.error
                                      ? healthyLivingSharedLocalization
                                          .healthyLivingShared_signup_mustEnterAValidEmail
                                      : "",
                              onChanged:
                                  (val) => forgotPasswordBloc.add(
                                    ForgotPasswordEvent.onTextChange(
                                      email: val,
                                    ),
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    // KEY: TestKeys.forgotSubmitButton
                    child: DSButtonPrimary(
                      key: const Key('forgot_submit_button'),
                      text: localization.auth_forgotPassword_sendResetLink,
                      size: DSButtonSize.small,
                      state:
                          isLoading
                              ? DSButtonState.loading
                              : formState.isFormValid!
                              ? DSButtonState.normal
                              : DSButtonState.disabled,
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        forgotPasswordBloc.add(
                          ForgotPasswordEvent.resetLinkButtonEvent(
                            email: formState.email,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
