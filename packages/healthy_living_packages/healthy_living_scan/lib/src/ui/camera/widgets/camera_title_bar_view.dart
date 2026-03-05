import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_scan/src/resources/scanner_icons.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_state.dart';

class CameraTitleBarView extends StatelessWidget {
  const CameraTitleBarView({
    required this.onBack,
    required this.onFlash,
    required this.title,
    super.key,
  });

  final VoidCallback? onBack;
  final VoidCallback? onFlash;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: context.dsSpacing.sp100,
        vertical: 14,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.dsSizes.sz500,
            height: context.dsSizes.sz500,
            child: GestureDetector(
              onTap: onBack,
              child: DSImage.asset(
                DSIcons.icClose,
                color: context.dsColors.iconBrandDisabled,
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
              ),
            ),
          ),

          Expanded(
            child: Center(
              child: DSText(
                text: title,
                textStyle: DSTextStyleType.primaryHeadingS,
                textColor: context.dsColors.textOnSurfaceDefault,
                textAlign: TextAlign.center,
              ),
            ),
          ),

          BlocBuilder<ScanBloc, ScanState>(
            buildWhen: (_, current) => current is ScanToggledTorch,
            builder: (context, state) {
              final isTorchOn = state.maybeWhen(
                toggledTorch: (value) => value,
                orElse: () => false,
              );

              return SizedBox(
                width: context.dsSizes.sz500,
                height: context.dsSizes.sz500,
                child: GestureDetector(
                  onTap: onFlash,
                  child: DSImage.asset(
                    isTorchOn
                        ? ScannerIcons.icFlashOnIcon
                        : ScannerIcons.icFlashOffIcon,
                    width: context.dsSizes.sz500,
                    height: context.dsSizes.sz500,
                    color: context.dsColors.iconBrandDisabled,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
