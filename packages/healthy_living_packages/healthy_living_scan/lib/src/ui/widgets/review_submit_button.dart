import 'package:design_system/design_system.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:flutter/material.dart';

class ReviewSubmitButton extends StatelessWidget {
  const ReviewSubmitButton({
    required this.onSubmitTap,
    required this.onStartOverTap,
    super.key,
  });

  final VoidCallback onSubmitTap;
  final VoidCallback onStartOverTap;

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp400),
      child: Column(
        children: [
          DSButtonPrimary(
            text: localization.submitProduct_productSubmission_submit,
            onPressed: onSubmitTap,
            leadingIconPath: DSIcons.icCircleCheck,
          ),
        ],
      ),
    );
  }
}
