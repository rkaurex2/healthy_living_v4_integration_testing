import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/widgets/instant_score_processing_notifier.dart';

class InstantScoreProcessingScreen extends StatefulWidget {
  final String message;

  const InstantScoreProcessingScreen({required this.message, super.key});

  @override
  State<InstantScoreProcessingScreen> createState() =>
      _InstantScoreProcessingScreenState();
}

class _InstantScoreProcessingScreenState
    extends State<InstantScoreProcessingScreen> {
  late final InstantScoreProcessingNotifier _notifier;

  @override
  void initState() {
    super.initState();
    _notifier = InstantScoreProcessingNotifier();
  }

  @override
  void dispose() {
    _notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final subMessages = [
      localization.submitProduct_productSubmission_thisShouldOnlyTake,
      localization.submitProduct_productSubmission_thisIsTakingLonger,
    ];
    return Scaffold(
      backgroundColor: context.dsColors.surfacePrimaryDefault,
      body: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          return;
        },
        child: SafeArea(
          child: Column(
            children: [
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
              Align(
                alignment: Alignment.center,
                child: DSImage.asset(
                  DSIcons.icHealthyLivingTmLogo,
                  height: context.dsSizes.sz900,
                  color: context.dsColors.iconOnSurfaceDefault,
                ),
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DSImage.asset(
                    DSIcons.icOcrPollingProcessing,
                    height: 200,
                    width: 200,
                  ),

                  DSSpacingWidget.vertical(spacing: context.dsSpacing.sp800),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      transitionBuilder: (
                        Widget child,
                        Animation<double> animation,
                      ) {
                        return FadeTransition(opacity: animation, child: child);
                      },
                      child: DSText(
                        text: widget.message,
                        textStyle: DSTextStyleType.secondaryHeadingL,
                        textColor: context.dsColors.textOnSurfaceDefault,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              AnimatedBuilder(
                animation: _notifier,
                builder: (context, _) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (child, animation) =>
                            FadeTransition(opacity: animation, child: child),
                    child: DSText(
                      key: ValueKey(_notifier.subMessageIndex),
                      text: subMessages[_notifier.subMessageIndex],
                      textStyle: DSTextStyleType.primaryBodyMRegular,
                      textColor: context.dsColors.textOnSurfaceSecondary,
                    ),
                  );
                },
              ),
              DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
            ],
          ),
        ),
      ),
    );
  }
}
