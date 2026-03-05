import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_state.dart';
import 'package:healthy_living_auth/src/ui/models/auth_screen_status.dart';
import 'package:healthy_living_auth/src/ui/models/password_error_type.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';

class CreateNewPasswordContentScreen extends StatefulWidget {
  final String openedFrom;
  final String code;

  const CreateNewPasswordContentScreen({
    required this.openedFrom,
    required this.code,
    super.key,
  });

  @override
  State<CreateNewPasswordContentScreen> createState() =>
      _CreateNewPasswordContentScreenState();
}

class _CreateNewPasswordContentScreenState
    extends State<CreateNewPasswordContentScreen> {
  final FocusNode _currentPasswordFocus = FocusNode();
  final FocusNode _newPasswordFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  final TextEditingController _currentPasswordController =
      TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  late CreateNewPasswordBloc bloc;

  bool get _isChangePasswordFlow =>
      widget.openedFrom == StringConstants.changePassword;

  @override
  void initState() {
    super.initState();
    bloc = context.read<CreateNewPasswordBloc>();

    _currentPasswordFocus.addListener(() {
      if (_currentPasswordFocus.hasFocus) {
        bloc.add(
          CreateNewPasswordEvent.currentPasswordFocusChanged(
            _currentPasswordController.text,
          ),
        );
      }
    });
    _newPasswordFocus.addListener(() {
      if (_newPasswordFocus.hasFocus) {
        bloc.add(
          CreateNewPasswordEvent.newPasswordFocusChanged(
            _newPasswordController.text,
          ),
        );
      }
    });
    _confirmPasswordFocus.addListener(() {
      if (_confirmPasswordFocus.hasFocus) {
        bloc.add(
          CreateNewPasswordEvent.confirmPasswordFocusChanged(
            _confirmPasswordController.text,
          ),
        );
      }
    });
    bloc.setChangePasswordMode(
      widget.openedFrom == StringConstants.changePassword,
    );
  }

  @override
  void didUpdateWidget(covariant CreateNewPasswordContentScreen oldWidget) {
    if (context.mounted && widget.code != oldWidget.code) {
      _currentPasswordController.clear();
      _newPasswordController.clear();
      _confirmPasswordController.clear();

      // Also update flow mode if `openedFrom` changed
      bloc.setChangePasswordMode(
        widget.openedFrom == StringConstants.changePassword,
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              _isChangePasswordFlow
                  ? HeaderWithTitle(
                    title: localization.auth_changePassword_changePassword,
                    leadIcon: DSIcons.icArrowLeft,
                    onTapLeadIcon: () {
                      context.pop();
                    },
                  )
                  : const TopBarHeader(
                    centerIcon: DSIcons.icHealthyLivingLogoOneLine,
                  ),

              Expanded(
                child: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSText(
                          text:
                              localization
                                  .auth_forgotPassword_pleaseEnterNewPassword,
                          textStyle: DSTextStyleType.primarySubHeadingM,
                          textColor: context.dsColors.textNeutralOnWhite,
                        ),
                        DSText(
                          text:
                              localization
                                  .auth_changePassword_useMinimumSixCharacters,
                          textStyle: DSTextStyleType.primaryBodySRegular,
                          textColor: context.dsColors.textNeutralSecondary,
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp600,
                        ),

                        if (_isChangePasswordFlow) ...{
                          BlocBuilder<
                            CreateNewPasswordBloc,
                            CreateNewPasswordState
                          >(
                            buildWhen:
                                (prev, curr) =>
                                    prev.currentPasswordInputState !=
                                        curr.currentPasswordInputState ||
                                    prev.currentPasswordErrorType !=
                                        curr.currentPasswordErrorType,
                            builder: (context, state) {
                              return DSTextInput(
                                focusNode: _currentPasswordFocus,
                                controller: _currentPasswordController,
                                label:
                                    localization
                                        .auth_changePassword_currentPassword,
                                state: state.currentPasswordInputState,
                                isPasswordInput: true,
                                caption: _currentPasswordValidationCaption(
                                  state: state,
                                  localization: localization,
                                ),
                                onChanged:
                                    (val) => bloc.add(
                                      CreateNewPasswordEvent.onTextChange(
                                        currentPassword: val,
                                        confirmPassword:
                                            _confirmPasswordController.text,
                                        newPassword:
                                            _newPasswordController.text,
                                      ),
                                    ),
                              );
                            },
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp400,
                          ),
                        },

                        BlocBuilder<
                          CreateNewPasswordBloc,
                          CreateNewPasswordState
                        >(
                          buildWhen:
                              (previous, current) =>
                                  previous.newPasswordTextInputState !=
                                      current.newPasswordTextInputState ||
                                  previous.newPasswordErrorType !=
                                      current.newPasswordErrorType,

                          builder: (context, state) {
                            return DSTextInput(
                              focusNode: _newPasswordFocus,
                              controller: _newPasswordController,

                              label:
                                  localization
                                      .auth_forgotPassword_newPasswordRequired,
                              state: state.newPasswordTextInputState,
                              isPasswordInput: true,
                              caption: _newPasswordValidationCaption(
                                state: state,
                                localization: localization,
                              ),
                              onChanged:
                                  (val) => bloc.add(
                                    CreateNewPasswordEvent.onTextChange(
                                      currentPassword:
                                          _currentPasswordController.text,
                                      newPassword: val,
                                      confirmPassword:
                                          _confirmPasswordController.text,
                                    ),
                                  ),
                            );
                          },
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),

                        // Password
                        BlocBuilder<
                          CreateNewPasswordBloc,
                          CreateNewPasswordState
                        >(
                          buildWhen:
                              (previous, current) =>
                                  previous.confirmPasswordInputState !=
                                      current.confirmPasswordInputState ||
                                  previous.confirmPasswordErrorType !=
                                      current.confirmPasswordErrorType,
                          builder: (context, state) {
                            return DSTextInput(
                              focusNode: _confirmPasswordFocus,
                              controller: _confirmPasswordController,

                              label:
                                  localization
                                      .auth_forgotPassword_confirmPasswordRequired,
                              state: state.confirmPasswordInputState,
                              caption: _confirmPasswordValidationCaption(
                                state: state,
                                localization: localization,
                              ),
                              isPasswordInput: true,
                              onChanged:
                                  (val) => bloc.add(
                                    CreateNewPasswordEvent.onTextChange(
                                      confirmPassword: val,
                                      newPassword: _newPasswordController.text,
                                      currentPassword:
                                          _currentPasswordController.text,
                                    ),
                                  ),
                            );
                          },
                        ),
                        DSSpacingWidget.vertical(
                          spacing: context.dsSpacing.sp400,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BlocConsumer<CreateNewPasswordBloc, CreateNewPasswordState>(
                listenWhen: (prev, curr) => prev.status != curr.status,
                listener: (context, state) {
                  if (state.status == AuthScreenStatus.changedPasswordSuccess) {
                    DSToast.show(
                      context: context,
                      title:
                          localization
                              .auth_changePassword_passwordChangedSuccessfully,
                    );
                    if(_isChangePasswordFlow) {
                      context.pop();
                    } else {
                      context.goNamed(
                        AppRoutes.resetPasswordConfirm.name,
                        extra: {StringConstants.openedFrom :
                            StringConstants.forgotPassword,
                        }
                      );
                    }
                    return;
                  } else if (state.status == AuthScreenStatus.failure) {
                    final ex = state.createPasswordException;
                    if (ex is NetworkException &&
                        ex.statusCode == ApiStatusCodeConstants.statusCode422) {
                      DSToast.show(
                        context: context,
                        title:
                            localization
                                .auth_changePassword_currentPasswordEnteredIsNotCorrect,
                        leadingIconPath: DSIcons.icWarning,
                      );
                    } else {
                      DSToast.show(
                        context: context,
                        title:
                            localization.auth_appleSignIn_notInteractiveMessage,
                        leadingIconPath: DSIcons.icWarning,
                      );
                    }
                  }
                },

                buildWhen:
                    (prev, curr) =>
                        prev.isFormButtonDisabled !=
                            curr.isFormButtonDisabled ||
                        prev.status != curr.status,
                builder: (context, state) {
                  final isLoading = state.status == AuthScreenStatus.loading;
                  final disabled = state.isFormButtonDisabled || isLoading;
                  return Padding(
                    padding: EdgeInsets.all(context.dsSpacing.sp400),
                    child: DSButtonPrimary(
                      text: localization.auth_forgotPassword_saveNewPassword,
                      size: DSButtonSize.small,
                      state:
                          isLoading
                              ? DSButtonState.loading
                              : disabled
                              ? DSButtonState.disabled
                              : DSButtonState.normal,

                      onPressed:
                          disabled
                              ? null
                              : () {
                                FocusScope.of(context).unfocus();
                                if (!_isChangePasswordFlow) {
                                  bloc.add(
                                    CreateNewPasswordEvent.saveNewPasswordButton(
                                      password:
                                          _newPasswordController.text.trim(),
                                      confirmPassword:
                                          _confirmPasswordController.text
                                              .trim(),
                                      code: widget.code,
                                    ),
                                  );
                                } else {
                                  bloc.add(
                                    CreateNewPasswordEvent.changeNewPasswordButton(
                                      password:
                                          _newPasswordController.text.trim(),
                                      confirmPassword:
                                          _confirmPasswordController.text
                                              .trim(),
                                      currentPassword:
                                          _currentPasswordController.text
                                              .trim(),
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

  String _currentPasswordValidationCaption({
    required CreateNewPasswordState state,
    required HealthyLivingAuthLocalizations localization,
  }) {
    if (state.currentPasswordInputState == DSTextInputState.error) {
      if (state.currentPasswordErrorType == PasswordErrorType.required) {
        return localization.auth_changePassword_currentPasswordIsRequired;
      }
    }
    return "";
  }

  String _newPasswordValidationCaption({
    required CreateNewPasswordState state,
    required HealthyLivingAuthLocalizations localization,
  }) {
    if (state.newPasswordTextInputState == DSTextInputState.error) {
      if (state.newPasswordErrorType == PasswordErrorType.required) {
        return localization.auth_changePassword_newPasswordCannotBeEmpty;
      } else if (state.newPasswordErrorType == PasswordErrorType.invalid) {
        return localization
            .auth_changePassword_newPasswordShouldBeAtLeast6CharactersLong;
      }
    }
    return "";
  }

  String _confirmPasswordValidationCaption({
    required CreateNewPasswordState state,
    required HealthyLivingAuthLocalizations localization,
  }) {
    if (state.confirmPasswordInputState == DSTextInputState.error) {
      if (state.confirmPasswordErrorType == PasswordErrorType.required) {
        return localization.auth_changePassword_confirmPasswordIsRequired;
      } else if (state.confirmPasswordErrorType == PasswordErrorType.invalid) {
        return localization.auth_changePassword_confirmPasswordValidation;
      }
    }
    return "";
  }

  @override
  void dispose() {
    _currentPasswordFocus.dispose();
    _newPasswordFocus.dispose();
    _confirmPasswordFocus.dispose();
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
