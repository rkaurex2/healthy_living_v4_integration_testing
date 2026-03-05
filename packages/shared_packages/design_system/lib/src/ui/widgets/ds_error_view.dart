import 'package:design_system/design_system.dart';
import 'package:design_system/src/theme_extensions/ds_theme_build_context_extension.dart';
import 'package:flutter/material.dart';

/// A persistent full-area error state widget shown when a screen fails to load.
/// Replaces the transient DSToast pattern for data-loading failures.
///
/// Usage:
/// ```dart
/// if (state is LoadFailure)
///   DSErrorView(onRetry: () => bloc.add(const Reload()))
/// ```
class DSErrorView extends StatelessWidget {
  const DSErrorView({
    super.key,
    required this.onRetry,
    this.message =
        'Something went wrong. Please check your connection and try again.',
    this.retryLabel = 'Try Again',
  });

  final VoidCallback onRetry;
  final String message;
  final String retryLabel;

  @override
  Widget build(BuildContext context) {
    final dsColors = context.dsColors;
    final dsSpacing = context.dsSpacing;

    return Center(
      key: const Key('offline_error_view'),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: dsSpacing.sp400),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            DSImage.asset(
              DSIcons.icWarning,
              width: 48,
              height: 48,
              color: dsColors.surfaceSemanticError,
            ),
            DSSpacingWidget.vertical(spacing: dsSpacing.sp400),
            DSText(
              text: message,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: dsColors.textNeutralOnWhite,
              textAlign: TextAlign.center,
            ),
            DSSpacingWidget.vertical(spacing: dsSpacing.sp600),
            DSButtonPrimary(
              key: const Key('retry_button'),
              text: retryLabel,
              size: DSButtonSize.small,
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }
}
