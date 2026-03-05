import 'package:design_system/design_system.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_state.dart';
import 'package:healthy_living_auth/src/ui/widgets/top_bar_header.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CheckYourEmailContentScreen extends StatefulWidget {
  final String email;

  const CheckYourEmailContentScreen({required this.email, super.key});

  @override
  State<CheckYourEmailContentScreen> createState() =>
      _CheckYourEmailContentScreenState();
}

class _CheckYourEmailContentScreenState
    extends State<CheckYourEmailContentScreen> {
  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;
    final healthyLivingSharedLocalization =
        HealthyLivingSharedLocalizations.of(context)!;

    // KEY: TestKeys.forgotSuccessView
    return Scaffold(
      key: const Key('forgot_success_view'),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocConsumer<CheckEmailBloc, CheckEmailState>(
          listenWhen:
              (previous, current) =>
                  current is CheckEmailSuccess || current is CheckEmailFailure,
          listener: (context, state) {
            if (state is CheckEmailSuccess) {
              DSToast.show(
                context: context,
                title:
                    state.successData?.message ??
                    localization.auth_forgotPassword_resendLinkSuccessfully,
              );
            } else if (state is CheckEmailFailure) {
              final errorMessage =
                  HealthyLivingSharedUtils.getServerErrorMessage(
                    localizations: healthyLivingSharedLocalization,
                    exception: state.exception,
                  );

              DSToast.show(context: context, title: errorMessage);
            }
          },
          builder: (context, state) {
            final checkEmailBloc = context.read<CheckEmailBloc>();
            return Column(
              children: [
                TopBarHeader(centerIcon: DSIcons.icHealthyLivingLogoOneLine),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(context.dsSpacing.sp400),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSText(
                            text:
                                localization.auth_forgotPassword_checkYourEmail,
                            textStyle: DSTextStyleType.primaryHeadingS,
                            textColor: context.dsColors.textNeutralOnWhite,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp600,
                          ),
                          DSText(
                            text:
                                '${localization.auth_forgotPassword_checkYourInbox} ${widget.email}',
                            textStyle: DSTextStyleType.primaryBodyMRegular,
                            textColor: context.dsColors.textNeutralSecondary,
                          ),
                          DSSpacingWidget.vertical(
                            spacing: context.dsSpacing.sp600,
                          ),
                          DSText.rich(
                            textSpan: TextSpan(
                              text:
                                  "${localization.auth_forgotPassword_didNtReceiveEmail} ",
                              children: [
                                TextSpan(
                                  text:
                                      localization
                                          .auth_forgotPassword_resendLink,
                                  recognizer:
                                      TapGestureRecognizer()
                                        ..onTap = () {
                                          checkEmailBloc.add(
                                            CheckEmailEvent.resetLinkButtonEvent(
                                              email: widget.email,
                                            ),
                                          );
                                        },
                                  style: DSTextStyleType.primaryLinkM
                                      .getTextStyle()
                                      .copyWith(
                                        color: context.dsColors.textPrimaryLink,
                                        decoration: TextDecoration.underline,
                                        decorationColor:
                                            context.dsColors.textPrimaryLink,
                                      ),
                                ),
                              ],
                            ),
                            textStyle: DSTextStyleType.primaryBodyMRegular,
                            textColor: context.dsColors.textPrimaryDefault,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
