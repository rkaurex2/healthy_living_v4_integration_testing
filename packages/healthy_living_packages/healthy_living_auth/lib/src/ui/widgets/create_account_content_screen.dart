import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/email_error_type.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CreateAccountContentScreen extends StatefulWidget {
  final String openedFrom;
  final int? myListTapIndex;

  const CreateAccountContentScreen({
    required this.openedFrom,
    super.key,
    this.myListTapIndex,
  });

  @override
  State<CreateAccountContentScreen> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountContentScreen> {
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _firstNameFocus = FocusNode();
  final FocusNode _lastNameFocus = FocusNode();
  final FocusNode _zipCodeFocus = FocusNode();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _zipCodeController = TextEditingController();
  late SignUpBloc bloc;
  late final TapGestureRecognizer _termsTap;
  late final TapGestureRecognizer _privacyTap;
  bool _hasInitializedControllers = false;

  @override
  void initState() {
    super.initState();
    bloc = context.read<SignUpBloc>();
    _firstNameFocus.addListener(() {
      if (!_firstNameFocus.hasFocus) {
        bloc.add(SignUpEvent.firstNameFocusChanged(_firstNameController.text));
      }
    });
    _lastNameFocus.addListener(() {
      if (!_lastNameFocus.hasFocus) {
        bloc.add(SignUpEvent.lastNameFocusChanged(_lastNameController.text));
      }
    });
    _zipCodeFocus.addListener(() {
      if (!_zipCodeFocus.hasFocus) {
        bloc.add(SignUpEvent.zipCodeFocusChanged(_zipCodeController.text));
      }
    });
    _passwordFocus.addListener(() {
      if (!_passwordFocus.hasFocus) {
        bloc.add(SignUpEvent.passwordFocusChanged(_passwordController.text));
      }
    });

    _emailFocus.addListener(() {
      if (!_emailFocus.hasFocus) {
        bloc.add(SignUpEvent.emailFocusChanged(_emailController.text));
      }
    });
    _termsTap =
        TapGestureRecognizer()
          ..onTap =
              () => _onTermsTap(
                HealthyLivingAuthLocalizations.of(context)!.auth_signup_terms,
                UrlConstants.terms,
              );
    _privacyTap =
        TapGestureRecognizer()
          ..onTap =
              () => _onTermsTap(
                HealthyLivingAuthLocalizations.of(
                  context,
                )!.auth_signup_privacyPolicy,
                UrlConstants.privacyPolicy,
              );
    bloc.setEditProfileMode(widget.openedFrom == StringConstants.editProfile);
  }

  @override
  void dispose() {
    _termsTap.dispose();
    _privacyTap.dispose();
    super.dispose();
  }

  void _initializeControllersForEditProfile() {
    if (widget.openedFrom == StringConstants.editProfile &&
        !_hasInitializedControllers) {
      _firstNameController.text = bloc.userDataModel?.firstName ?? "";
      _lastNameController.text = bloc.userDataModel?.lastName ?? "";
      _emailController.text = bloc.userDataModel?.email ?? "";
      _zipCodeController.text = bloc.userDataModel?.zipCode ?? "";
      _hasInitializedControllers = true;
      if (bloc.userDataModel?.country != null) {
        bloc.add(SignUpEvent.countryChanged(bloc.userDataModel!.country));
      }
      // Trigger form validation with the loaded data
      bloc.add(
        SignUpEvent.onTextChange(
          firstName: bloc.userDataModel?.firstName ?? "",
          lastName: bloc.userDataModel?.lastName ?? "",
          email: bloc.userDataModel?.email ?? "",
          password: '',
          zipCode: bloc.userDataModel?.zipCode ?? "",
        ),
      );
    }
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
              widget.openedFrom == StringConstants.editProfile
                  ? HeaderWithTitle(
                    leadIcon: DSIcons.icArrowLeft,
                    onTapLeadIcon: () {
                      context.pop();
                    },
                    title: localization.auth_editProfile_accountDetails,
                  )
                  : const TopBarHeader(
                    centerIcon: DSIcons.icHealthyLivingLogoOneLine,
                  ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: BlocListener<SignUpBloc, SignUpState>(
                      listenWhen:
                          (previous, current) =>
                              widget.openedFrom ==
                                      StringConstants.editProfile &&
                                  previous.status != current.status &&
                                  current.status ==
                                      AuthScreenStatus.localDataLoaded ||
                              current.status ==
                                  AuthScreenStatus.profileUpdateSuccess,
                      listener: (context, state) {
                        _initializeControllersForEditProfile();
                        if (state.status ==
                            AuthScreenStatus.profileUpdateSuccess) {
                          context.read<AppBloc>().add(
                            AppEvent.refreshUserLogin(),
                          );
                          context.pop();
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.openedFrom !=
                              StringConstants.editProfile) ...{
                            DSText(
                              text: localization.auth_signup_createYourAccount,
                              textStyle: DSTextStyleType.primaryHeadingS,
                              textColor: context.dsColors.textNeutralOnWhite,
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp400,
                            ),
                          },

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: BlocBuilder<SignUpBloc, SignUpState>(
                                  buildWhen:
                                      (prev, curr) =>
                                          prev.firstNameTextInputState !=
                                          curr.firstNameTextInputState,
                                  builder: (context, state) {
                                    return DSTextInput(
                                      focusNode: _firstNameFocus,
                                      controller: _firstNameController,
                                      label: localization.auth_signup_firstName,
                                      state: state.firstNameTextInputState,
                                      caption:
                                          state.firstNameTextInputState ==
                                                  DSTextInputState.error
                                              ? localization
                                                  .auth_signup_firstNameCannotBeEmpty
                                              : "",
                                      onChanged:
                                          (val) => bloc.add(
                                            SignUpEvent.onTextChange(
                                              firstName: val,
                                              lastName:
                                                  _lastNameController.text,
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text,
                                              zipCode: _zipCodeController.text,
                                            ),
                                          ),
                                      textCapitalization:
                                          TextCapitalization.words,
                                    );
                                  },
                                ),
                              ),
                              DSSpacingWidget.horizontal(
                                spacing: context.dsSpacing.sp200,
                              ),
                              Expanded(
                                child: BlocBuilder<SignUpBloc, SignUpState>(
                                  buildWhen:
                                      (prev, curr) =>
                                          prev.lastNameTextInputState !=
                                          curr.lastNameTextInputState,
                                  builder: (context, state) {
                                    return DSTextInput(
                                      focusNode: _lastNameFocus,
                                      controller: _lastNameController,
                                      label: localization.auth_signup_lastName,
                                      state: state.lastNameTextInputState,
                                      caption:
                                          state.lastNameTextInputState ==
                                                  DSTextInputState.error
                                              ? localization
                                                  .auth_signup_lastNameCannotBeEmpty
                                              : "",
                                      onChanged:
                                          (val) => bloc.add(
                                            SignUpEvent.onTextChange(
                                              firstName:
                                                  _firstNameController.text,
                                              lastName: val,
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text,
                                              zipCode: _zipCodeController.text,
                                            ),
                                          ),
                                      textCapitalization:
                                          TextCapitalization.words,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),

                          BlocBuilder<SignUpBloc, SignUpState>(
                            buildWhen:
                                (prev, curr) =>
                                    prev.emailTextInputState !=
                                        curr.emailTextInputState ||
                                    prev.emailErrorType != curr.emailErrorType,
                            builder: (context, state) {
                              // KEY: TestKeys.createAccEmailField
                              return DSTextInput(
                                key: const Key('create_acc_email_field'),
                                label:
                                    healthyLivingSharedLocalizations
                                        .healthyLivingShared_signup_email,
                                keyboardType: TextInputType.emailAddress,
                                focusNode: _emailFocus,
                                controller: _emailController,
                                state: state.emailTextInputState,
                                enabled:
                                    widget.openedFrom ==
                                            StringConstants.editProfile
                                        ? false
                                        : true,
                                readOnly:
                                    widget.openedFrom ==
                                            StringConstants.editProfile
                                        ? true
                                        : false,
                                caption: _emailValidationCaption(
                                  state: state,
                                  localization: localization,
                                ),
                                onChanged:
                                    (val) => bloc.add(
                                      SignUpEvent.onTextChange(
                                        email: val,
                                        firstName: _firstNameController.text,
                                        lastName: _lastNameController.text,
                                        password: _passwordController.text,
                                        zipCode: _zipCodeController.text,
                                      ),
                                    ),
                              );
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          if (widget.openedFrom !=
                              StringConstants.editProfile) ...[
                            BlocBuilder<SignUpBloc, SignUpState>(
                              buildWhen:
                                  (prev, curr) =>
                                      prev.passwordTextInputState !=
                                          curr.passwordTextInputState ||
                                      prev.passwordErrorType !=
                                          curr.passwordErrorType,
                              builder: (context, state) {
                                // KEY: TestKeys.createAccPasswordField
                                return DSTextInput(
                                  key: const Key('create_acc_password_field'),
                                  focusNode: _passwordFocus,
                                  controller: _passwordController,
                                  label: localization.auth_signup_password,
                                  state: state.passwordTextInputState,
                                  isPasswordInput: true,
                                  caption: _passwordValidationCaption(
                                    state: state,
                                    localization: localization,
                                  ),
                                  onChanged:
                                      (val) => bloc.add(
                                        SignUpEvent.onTextChange(
                                          email: _emailController.text,
                                          firstName: _firstNameController.text,
                                          lastName: _lastNameController.text,
                                          password: val,
                                          zipCode: _zipCodeController.text,
                                        ),
                                      ),
                                );
                              },
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp400,
                            ),
                          ],
                          BlocBuilder<SignUpBloc, SignUpState>(
                            buildWhen:
                                (prev, curr) => prev.country != curr.country,
                            builder: (context, state) {
                              return CountryCodePickerWidget(
                                onChanged: (country) {
                                  bloc.add(
                                    SignUpEvent.countryChanged(
                                      country.code ??
                                          StringConstants
                                              .defaultSelectedCountryCode,
                                    ),
                                  );
                                },
                                initialSelection: _getInitialCountrySelection(),
                              );
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),

                          BlocBuilder<SignUpBloc, SignUpState>(
                            buildWhen:
                                (prev, curr) =>
                                    prev.zipCodeTextInputState !=
                                    curr.zipCodeTextInputState,
                            builder: (context, state) {
                              return DSTextInput(
                                focusNode: _zipCodeFocus,
                                controller: _zipCodeController,
                                label: localization.auth_signup_zipCode,
                                state: state.zipCodeTextInputState,
                                caption:
                                    state.zipCodeTextInputState ==
                                            DSTextInputState.error
                                        ? localization
                                            .auth_signup_zipCodeCannotBeEmpty
                                        : "",
                                onChanged:
                                    (val) => bloc.add(
                                      SignUpEvent.onTextChange(
                                        email: _emailController.text,
                                        firstName: _firstNameController.text,
                                        lastName: _lastNameController.text,
                                        password: _passwordController.text,
                                        zipCode: val,
                                      ),
                                    ),
                              );
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                          if (widget.openedFrom !=
                              StringConstants.editProfile) ...[
                            Row(
                              children: [
                                BlocBuilder<SignUpBloc, SignUpState>(
                                  buildWhen:
                                      (prev, curr) =>
                                          prev.subscribeNewsletter !=
                                          curr.subscribeNewsletter,

                                  builder: (context, state) {
                                    return DSCheckbox(
                                      status:
                                          state.subscribeNewsletter
                                              ? DSCheckboxStatus.selected
                                              : DSCheckboxStatus.unSelected,
                                      state: DSCheckboxState.defaultState,
                                      onChanged: (value) {
                                        bloc.add(
                                          SignUpEvent.subscribeNewsletterToggled(),
                                        );
                                      },
                                    );
                                  },
                                ),
                                Expanded(
                                  child: DSText(
                                    text:
                                        localization
                                            .auth_signup_subscribeToOurNewsletter,
                                    textStyle: DSTextStyleType.primaryCaption,
                                    textColor:
                                        context.dsColors.textNeutralOnWhite,
                                  ),
                                ),
                              ],
                            ),
                            DSSpacingWidget.vertical(
                              spacing: context.dsSpacing.sp500,
                            ),

                            DSText.rich(
                              textSpan: TextSpan(
                                text:
                                    localization.auth_signup_continuingYouAgree,
                                children: [
                                  TextSpan(
                                    text: localization.auth_signup_terms,
                                    style:
                                        DSTextStyleType.primaryCaptionSemibold
                                            .getTextStyle(),
                                    recognizer: _termsTap,
                                  ),
                                  TextSpan(
                                    text: ' ${localization.auth_signup_and} ',
                                  ),
                                  TextSpan(
                                    text:
                                        localization.auth_signup_privacyPolicy,
                                    style:
                                        DSTextStyleType.primaryCaptionSemibold
                                            .getTextStyle(),
                                    recognizer: _privacyTap,
                                  ),
                                ],
                              ),
                              textStyle: DSTextStyleType.primaryCaption,
                              textColor: context.dsColors.textNeutralSecondary,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BlocConsumer<SignUpBloc, SignUpState>(
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
                  } else if (state.status == AuthScreenStatus.failure &&
                      state.emailErrorType !=
                          EmailErrorType.alreadyRegistered) {
                    final errorMessage =
                        HealthyLivingSharedUtils.getServerErrorMessage(
                          localizations:
                              HealthyLivingSharedLocalizations.of(context)!,
                          exception: state.signUpException,
                        );
                    DSToast.show(
                      context: context,
                      title: errorMessage,
                      leadingIconPath: DSIcons.icWarning,
                    );
                  }
                  FocusScope.of(context).unfocus();
                },
                buildWhen:
                    (prev, curr) =>
                        prev.isFormButtonDisabled !=
                            curr.isFormButtonDisabled ||
                        prev.status != curr.status ||
                        prev.subscribeNewsletter != curr.subscribeNewsletter ||
                        prev.country != curr.country,

                builder: (context, state) {
                  return Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    // KEY: TestKeys.createAccSubmitButton
                    child: DSButtonPrimary(
                      key: const Key('create_acc_submit_button'),
                      text:
                          (widget.openedFrom == StringConstants.editProfile)
                              ? localization.auth_editProfile_save
                              : localization.auth_signup_join,
                      size: DSButtonSize.small,
                      state:
                          state.status == AuthScreenStatus.loading
                              ? DSButtonState.loading
                              : state.isFormButtonDisabled ?? true
                              ? DSButtonState.disabled
                              : DSButtonState.normal,
                      onPressed:
                          ((state.isFormButtonDisabled ?? true) ||
                                  state.status == AuthScreenStatus.loading)
                              ? null
                              : () {
                                if (widget.openedFrom !=
                                    StringConstants.editProfile) {
                                  bloc.add(
                                    SignUpEvent.signUpButtonPressed(
                                      email: _emailController.text.trim(),
                                      password: _passwordController.text.trim(),
                                      firstName:
                                          _firstNameController.text.trim(),
                                      lastName: _lastNameController.text.trim(),
                                      zipCode: _zipCodeController.text.trim(),
                                      isNewsletterSubscribed:
                                          state.subscribeNewsletter,
                                      country: state.country,
                                    ),
                                  );
                                } else {
                                  bloc.add(
                                    SignUpEvent.saveButtonPressed(
                                      firstName:
                                          _firstNameController.text.trim(),
                                      lastName: _lastNameController.text.trim(),
                                      zipCode: _zipCodeController.text.trim(),
                                      country:
                                          state.country.isValidValue
                                              ? state.country
                                              : StringConstants
                                                  .defaultSelectedCountryCode,
                                    ),
                                  );
                                }
                              },
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

  String _passwordValidationCaption({
    required SignUpState state,
    required HealthyLivingAuthLocalizations localization,
  }) {
    if (state.passwordTextInputState == DSTextInputState.error) {
      if (state.passwordErrorType == PasswordErrorType.required) {
        return localization.auth_signup_passwordIsRequired;
      } else if (state.passwordErrorType == PasswordErrorType.invalid) {
        return localization.auth_signup_passwordValidation;
      }
    }
    return localization.auth_signup_passwordValidation;
  }

  String _emailValidationCaption({
    required SignUpState state,
    required HealthyLivingAuthLocalizations localization,
  }) {
    if (state.emailTextInputState == DSTextInputState.error) {
      if (state.emailErrorType == EmailErrorType.required) {
        return localization.auth_signup_emailIsRequired;
      } else if (state.emailErrorType == EmailErrorType.invalid) {
        return HealthyLivingSharedLocalizations.of(
          context,
        )!.healthyLivingShared_signup_mustEnterAValidEmail;
      } else if (state.emailErrorType == EmailErrorType.alreadyRegistered) {
        return localization.auth_signup_emailAlreadyRegistered;
      }
    }
    return '';
  }

  void _onTermsTap(String title, String url) {
    context.pushNamed(
      AppRoutes.webView.name,
      queryParameters:
          WebviewScreenParams(title: title, url: url).toQueryParameters(),
    );
  }

  String _getInitialCountrySelection() {
    return widget.openedFrom == StringConstants.editProfile &&
            bloc.state.country.isValidValue
        ? bloc.state.country
        : StringConstants.defaultSelectedCountryCode;
  }
}
