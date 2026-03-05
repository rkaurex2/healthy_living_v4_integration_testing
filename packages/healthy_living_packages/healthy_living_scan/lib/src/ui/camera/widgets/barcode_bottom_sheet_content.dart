import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:design_system/design_system.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_bloc.dart';
import 'package:healthy_living_scan/src/ui/bloc/scan_state.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_error_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_no_result_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_product_info_view.dart';
import 'package:healthy_living_scan/src/ui/camera/widgets/barcode_skeleton_view.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BottomSheetContent extends StatefulWidget {
  final BuildContext parentContext;
  final String upcCode;
  final Function(BuildContext) onClose;
  final Function(BuildContext) onRetry;
  final Function(GeneralProductListItemUIModel product) onShare;
  final Function(GeneralProductListItemUIModel product) onTap;
  final VoidCallback onTapToSearchProductTap;
  final VoidCallback onTapToSubmitProductTap;

  const BottomSheetContent({
    required this.parentContext,
    required this.upcCode,
    required this.onClose,
    required this.onRetry,
    required this.onShare,
    required this.onTap,
    required this.onTapToSearchProductTap,
    required this.onTapToSubmitProductTap,
    super.key,
  });

  @override
  State<BottomSheetContent> createState() => _AnimatedBottomSheetContentState();
}

class _AnimatedBottomSheetContentState extends State<BottomSheetContent>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.reverse();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingScanLocalizations.of(context)!;
    return SlideTransition(
      position: _slideAnimation,
      child: SafeArea(
        top: false,
        bottom: true,
        child: BlocProvider.value(
          value: widget.parentContext.read<ScanBloc>(),
          child: BlocBuilder<ScanBloc, ScanState>(
            buildWhen:
                (previous, current) =>
                    current is ScanProductSearchInProgress ||
                    current is ScanProductSearchSuccess ||
                    current is ScanProductSearchFailure,
            builder: (bottomContext, state) {
              bool showCloseInfo = false;
              Widget content = const SizedBox.shrink();

              if (state is ScanProductSearchInProgress) {
                content = BarcodeSkeletonView(
                  onClose: () => widget.onClose(bottomContext),
                );
                showCloseInfo = true;
              } else if (state is ScanProductSearchSuccess) {
                final product = state.productDetail;
                if (product == null) {
                  content = BarcodeNoResultView(
                    upcCode: widget.upcCode,
                    onClose: () => widget.onClose(bottomContext),
                    onTapToSearchProductTap: widget.onTapToSearchProductTap,
                    onTapToSubmitProductTap: widget.onTapToSubmitProductTap,
                  );
                } else {
                  content = BarcodeProductInfoView(
                    product: product,
                    onClose: () => widget.onClose(bottomContext),
                    onShare: () => widget.onShare(product),
                    onTap: () => widget.onTap(product),
                  );
                }
                showCloseInfo = true;
              } else if (state is ScanProductSearchFailure) {
                content = BarcodeErrorView(
                  upcCode: widget.upcCode,
                  onClose: () => widget.onClose(bottomContext),
                  onRetry: () => widget.onRetry(bottomContext),
                );
                showCloseInfo = true;
              }
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height,
                    ),
                    child: IntrinsicHeight(child: content),
                  ),

                  // Floating "Close Info" label (only after success/error)
                  if (showCloseInfo)
                    Positioned(
                      top: -50,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.dsColors.surfacePrimaryOpacity,
                            borderRadius: BorderRadius.circular(
                              context.dsRadius.rd200,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.dsSpacing.sp400,
                            vertical: context.dsSpacing.sp200,
                          ),
                          child: DSText(
                            text:
                                localization
                                    .barcodeScanner_bottomSheetCloseInfo,
                            textStyle: DSTextStyleType.primarySubHeadingS,
                            textColor: context.dsColors.textOnSurfaceDefault,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
