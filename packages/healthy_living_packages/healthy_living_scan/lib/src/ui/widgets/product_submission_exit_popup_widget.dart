import 'dart:math';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ProductSubmissionExitPopupWidget extends StatelessWidget {
  const ProductSubmissionExitPopupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HeaderWithTitle(
            title: localization.submitProduct_exitPopup_beforeYouGo,
            leadIcon: DSIcons.icClose,
            onTapLeadIcon: () {
              context.pop();
            },
          ),
          DSSpacingWidget.vertical(spacing: DSSpacing.sp500),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: DSSpacing.sp500),
            child: DSText(
              text: localization.submitProduct_exitPopup_ifYouExitNow,
              textStyle: DSTextStyleType.primaryBodyMRegular,
              textColor: context.dsColors.textPrimaryDefault,
            ),
          ),
          DSSpacingWidget.vertical(spacing: DSSpacing.sp600),
          const DSDivider(),
          Padding(
            padding: const EdgeInsets.all(DSSpacing.sp400),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      context.pop();
                      appBloc.add(
                        AppEvent.navigationToScanAfterSubmitProductFlowExit(),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 42,
                      child: DSText(
                        text: localization.submitProduct_exitPopup_exit,
                        textStyle: DSTextStyleType.primaryButtonLRegular,
                        textColor: context.dsColors.textPrimaryDefault,
                      ),
                    ),
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: DSSpacing.sp500),

                Expanded(
                  child: DSButtonPrimary(
                    text: localization.submitProduct_exitPopup_keepGoing,
                    size: DSButtonSize.small,
                    onPressed: () {
                      context.pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
