import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/model/submit_progress_steps.dart';
import 'package:healthy_living_scan/src/ui/widgets/product_submission_exit_popup_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_product_progress_widget.dart';
import 'package:healthy_living_scan/src/ui/widgets/submit_products_additional_info_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubmitProductsAdditionalInfoScreen extends StatelessWidget {
  final SubmitProductInfoParams infoUIModel;

  const SubmitProductsAdditionalInfoScreen({
    required this.infoUIModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWithTitle(
              title: localization.submitProduct_info_reviewProductDetails,
              trailIcon: DSIcons.icClose,
              onTapTrailIcon: () {
                DSBottomSheetWidget.showBottomSheet(
                  context: context,
                  child: ProductSubmissionExitPopupWidget(),
                );
              },
              textStyle: DSTextStyleType.primaryHeadingSBold,
              leadIcon: DSIcons.icArrowLeft,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
            SubmitProductProgressWidget(
              currentStep: SubmitProgressSteps.additionalInfo.progressFor(
                infoUIModel.productCategoryType,
              ),
              totalSteps: SubmitProgressSteps.totalSteps,
            ),
            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
            Expanded(
              child: SubmitProductsAdditionalInfoContentScreen(
                infoUIModel: infoUIModel,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
