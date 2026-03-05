import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_scan/src/ui/widgets/submission_confirmation_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmissionConfirmationScreen extends StatelessWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmissionConfirmationScreen({required this.infoUIModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.dsSpacing.sp400),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: context.dsSpacing.sp500,
                  bottom: context.dsSpacing.sp400,
                ),
                child: Center(
                  child: DSImage.asset(DSIcons.icHealthyLivingTmLogo),
                ),
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              Expanded(
                child: SubmissionConfirmationContentScreen(
                  infoUIModel: infoUIModel,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
