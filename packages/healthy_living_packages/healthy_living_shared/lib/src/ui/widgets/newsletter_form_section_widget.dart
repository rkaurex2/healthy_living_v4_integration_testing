import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NewsletterFormSectionWidget extends StatefulWidget {
  const NewsletterFormSectionWidget({required this.scrollToBottom, super.key});

  final VoidCallback scrollToBottom;

  @override
  State<NewsletterFormSectionWidget> createState() =>
      _NewsletterFormSectionWidgetState();
}

class _NewsletterFormSectionWidgetState
    extends State<NewsletterFormSectionWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _zipController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _zipFocusNode = FocusNode();
  String? _country;

  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      if (!_emailFocusNode.hasFocus && context.mounted) {
        context.read<NewsletterBloc>().add(
          NewsletterEvent.emailFocusChanged(_emailController.text),
        );
      }
    });

    _zipFocusNode.addListener(() {
      if (!_zipFocusNode.hasFocus && context.mounted) {
        context.read<NewsletterBloc>().add(
          NewsletterEvent.zipFocusChanged(_zipController.text),
        );
      } else if (_zipFocusNode.hasFocus && context.mounted) {
        if (context.read<NewsletterBloc>().state.zipTextInputState ==
            DSTextInputState.error) {
          Future.delayed(Duration(milliseconds: 600), () {
            widget.scrollToBottom.call();
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _zipController.dispose();
    _emailFocusNode.dispose();
    _zipFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return BlocBuilder<NewsletterBloc, NewsletterState>(
      buildWhen: (prev, current) {
        return current.status != NewsletterStatus.success ||
            current.status != NewsletterStatus.failure ||
            current.status == NewsletterStatus.initial;
      },
      builder: (context, state) {
        final bloc = context.read<NewsletterBloc>();
        if (state.status == NewsletterStatus.initial) {
          if (_emailController.text.isEmpty && state.email.isNotEmpty) {
            _emailController.text = state.email;
          }
          if (_zipController.text.isEmpty && state.zipCode.isNotEmpty) {
            _zipController.text = state.zipCode;
          }
          if (!_country.isValidValue && state.country.isNotEmpty) {
            _country = state.country;
          }
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: context.dsSpacing.sp400,
          children: [
            DSTextInput(
              label: localizations.healthyLivingShared_signup_email,
              controller: _emailController,
              focusNode: _emailFocusNode,
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                bloc.add(NewsletterEvent.emailTextChanged(value));
              },
              onFieldSubmitted: (value) {
                _emailFocusNode.unfocus();
                bloc.add(NewsletterEvent.emailFocusChanged(value));
              },
              state: state.emailTextInputState,
              caption:
                  state.emailTextInputState == DSTextInputState.error
                      ? localizations
                          .healthyLivingShared_signup_mustEnterAValidEmail
                      : "",
              onTapOutside: (_) {
                _emailFocusNode.unfocus();
              },
            ),
            CountryCodePickerWidget(
              onChanged: (country) {
                bloc.add(
                  NewsletterEvent.countryChanged(
                    country.code ?? StringConstants.defaultSelectedCountryCode,
                  ),
                );
              },
              initialSelection:
                  _country ?? StringConstants.defaultSelectedCountryCode,
            ),
            DSTextInput(
              label: localizations.healthyLivingShared_signup_zipCode,
              controller: _zipController,
              focusNode: _zipFocusNode,
              onChanged: (value) {
                bloc.add(NewsletterEvent.zipTextChanged(value));
              },
              onFieldSubmitted: (value) {
                _zipFocusNode.unfocus();
                bloc.add(NewsletterEvent.zipFocusChanged(value));
              },
              state: state.zipTextInputState,
              caption:
                  state.zipTextInputState == DSTextInputState.error
                      ? localizations
                          .healthyLivingShared_signup_zipCodeIsRequired
                      : "",
              onTapOutside: (_) {
                _zipFocusNode.unfocus();
              },
            ),
          ],
        );
      },
    );
  }
}
