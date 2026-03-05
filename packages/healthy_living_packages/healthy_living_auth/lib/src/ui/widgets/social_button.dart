import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';

class SocialButtons extends StatelessWidget {
  final VoidCallback? appleOnTap;
  final VoidCallback? googleOnTap;
  final bool isLogin;

  const SocialButtons({
    required this.isLogin,
    this.appleOnTap,
    this.googleOnTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingAuthLocalizations.of(context)!;
    final appleText =
        isLogin
            ? localizations.auth_socialSignIn_signInWithApple
            : localizations.auth_socialSignIn_continueWithApple;
    final googleText =
        isLogin
            ? localizations.auth_socialSignIn_signInWithGoogle
            : localizations.auth_socialSignIn_continueWithGoogle;

    return Column(
      children: [
        if (Platform.isIOS) ...{
          DSButtonPrimary(
            size: DSButtonSize.small,
            text: appleText,
            leadingIconPath: DSIcons.icApple,
            onPressed: appleOnTap,
            leadingIconSize: DSButtonIconSize.medium,
            useCustomLeadingIconColor: true,
          ),
        },
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
        DSButtonPrimary(
          size: DSButtonSize.small,
          text: googleText,
          leadingIconPath: DSIcons.icGoogle,
          onPressed: googleOnTap,
          leadingIconSize: DSButtonIconSize.medium,
          useCustomLeadingIconColor: true,
        ),
      ],
    );
  }
}
