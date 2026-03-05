import 'dart:async';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';

class PhotoProcessingWidget extends StatefulWidget {
  final String pollingStatus;

  const PhotoProcessingWidget({required this.pollingStatus, super.key});

  @override
  State<PhotoProcessingWidget> createState() => _PhotoProcessingWidgetState();
}

class _PhotoProcessingWidgetState extends State<PhotoProcessingWidget> {
  int _currentPrimaryMessageIndex = -1;
  int _currentSubMessageIndex = 0;
  Timer? _primaryMessageTimer;
  Timer? _subMessageTimer;

  List<String> _getPrimaryMessages(
    HealthyLivingScanLocalizations localization,
  ) {
    return [
      localization.submitProduct_productSubmission_readingYourPhoto,
      localization.submitProduct_productSubmission_extractingIngredients,
      localization.submitProduct_productSubmission_almostDoneLoading,
    ];
  }

  List<String> _getSubMessages(HealthyLivingScanLocalizations localization) {
    return [
      localization.submitProduct_productSubmission_thisShouldOnlyTake,
      localization.submitProduct_productSubmission_thisIsTakingLonger,
    ];
  }

  @override
  void initState() {
    super.initState();
    _startPrimaryMessageTimer();
    _startSubMessageTimer();
  }

  void _startPrimaryMessageTimer() {
    _primaryMessageTimer = Timer(const Duration(milliseconds: 850), () {
      if (mounted) {
        setState(() {
          _currentPrimaryMessageIndex = 0;
        });

        _primaryMessageTimer = Timer.periodic(
          const Duration(milliseconds: 3500),
          (timer) {
            if (mounted && _currentPrimaryMessageIndex < 2) {
              setState(() {
                _currentPrimaryMessageIndex++;
              });
            } else {
              timer.cancel();
            }
          },
        );
      }
    });
  }

  void _startSubMessageTimer() {
    _subMessageTimer = Timer(const Duration(milliseconds: 17000), () {
      if (mounted) {
        setState(() {
          _currentSubMessageIndex = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;

    final primaryMessages = _getPrimaryMessages(localization);
    final subMessages = _getSubMessages(localization);
    return Scaffold(
      backgroundColor: context.dsColors.iconPrimary,
      body: SafeArea(
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

            const Spacer(),

            DSImage.asset(
              DSIcons.icOcrPollingProcessing,
              height: 200,
              width: 200,
            ),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp800),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return FadeTransition(opacity: animation, child: child);
              },
              child: DSText(
                key: ValueKey<int>(_currentPrimaryMessageIndex),
                text: widget.pollingStatus,
                textStyle: DSTextStyleType.secondaryHeadingL,
                textColor: context.dsColors.textOnSurfaceDefault,
                textAlign: TextAlign.center,
              ),
            ),

            const Spacer(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
                child: DSText(
                  key: ValueKey<int>(_currentSubMessageIndex),
                  text: subMessages[_currentSubMessageIndex],
                  textStyle: DSTextStyleType.primaryBodyMRegular,
                  textColor: context.dsColors.textOnSurfaceSecondary,
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _primaryMessageTimer?.cancel();
    _subMessageTimer?.cancel();
    super.dispose();
  }
}
