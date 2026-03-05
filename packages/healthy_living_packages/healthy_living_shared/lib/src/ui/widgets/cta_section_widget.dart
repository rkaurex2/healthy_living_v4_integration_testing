import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NewsletterCtaSectionWidget extends StatelessWidget {
  final VoidCallback? onSubscribeToNewsletterTap;
  final VoidCallback? onHomeTap;
  final String openedFrom;
  final bool isOpenFromSocialLogin;

  const NewsletterCtaSectionWidget({
    required this.openedFrom,
    required this.isOpenFromSocialLogin,
    super.key,
    this.onSubscribeToNewsletterTap,
    this.onHomeTap,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;

    return BlocBuilder<NewsletterBloc, NewsletterState>(
      buildWhen: (previous, current) {
        return previous.email != current.email ||
            previous.zipCode != current.zipCode ||
            previous.status != current.status;
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DSButtonPrimary(
              text:
                  localizations
                      .healthyLivingShared_newsletter_subscribeToNewsletter,
              onPressed: onSubscribeToNewsletterTap,
              size: DSButtonSize.small,
              type: DSButtonType.fill,
              state: _getSubscribeCTAState(
                status: state.status,
                email: state.email,
                zipCode: state.zipCode,
              ),
            ),
            if (isOpenFromSocialLogin == true) ...[
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
              DSButtonPrimary.ghost(
                text: localizations.healthyLivingShared_newsletter_skip,
                onPressed: onHomeTap,
                size: DSButtonSize.small,
              ),
            ],
          ],
        );
      },
    );
  }

  DSButtonState _getSubscribeCTAState({
    required String email,
    required String zipCode,
    required NewsletterStatus status,
  }) {
    if (email.isValidEmail == false || zipCode.isValidValue == false) {
      return DSButtonState.disabled;
    } else if (status == NewsletterStatus.loading) {
      return DSButtonState.loading;
    } else {
      return DSButtonState.normal;
    }
  }
}
