import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:mobkit_dashed_border/mobkit_dashed_border.dart';

class CompareAnotherProductCard extends StatelessWidget {
  final VoidCallback onTap;
  final CompareProductCardType compareProductCardType;
  final bool isScanEnabled;
  final bool isSearchEnabled;
  final VoidCallback scanOnPressed;
  final VoidCallback searchOnPressed;
  const CompareAnotherProductCard({
    required this.onTap,
    required this.compareProductCardType,
    required this.scanOnPressed,
    required this.searchOnPressed,
    this.isScanEnabled = true,
    this.isSearchEnabled = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.all(context.dsSpacing.sp100),
        child: GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: Container(
            decoration: BoxDecoration(
              border: DashedBorder.fromBorderSide(
                dashLength: 4,
                side: BorderSide(
                  color: context.dsColors.surfacePrimaryMedium,
                  width: 2,
                ),
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(context.dsRadius.rd300),
              ),
            ),
            padding: EdgeInsets.all(context.dsSpacing.sp300),
            child:
                compareProductCardType == CompareProductCardType.addScanSearch
                    ? Row(
                      children: [
                        Expanded(
                          child: searchScanOptionCard(
                            context: context,
                            isCardDisable: isScanEnabled,
                            title:
                                healthyLivingSharedLocalizations
                                    .healthyLiving_bottomNavBar_scan,
                            icon: DSIcons.icBarcode,
                            onTap: () {
                              scanOnPressed.call();
                            },
                          ),
                        ),
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp300,
                        ),
                        Expanded(
                          child: searchScanOptionCard(
                            context: context,
                            isCardDisable: isSearchEnabled,
                            title:
                                healthyLivingSharedLocalizations.general_search,
                            icon: DSIcons.icGraySearch,
                            onTap: () {
                              searchOnPressed.call();
                            },
                          ),
                        ),
                      ],
                    )
                    : Container(
                      height: context.dsSizes.sz900,
                      decoration: BoxDecoration(
                        color: DSBaseColors.darkGreen700,
                        borderRadius: BorderRadius.circular(
                          context.dsRadius.rd200,
                        ),
                      ),
                      child: Center(
                        child: DSText(
                          text:
                              healthyLivingSharedLocalizations
                                  .general_compare_addAnother,
                          textStyle: DSTextStyleType.primaryCaptionSemibold,
                          textColor: context.dsColors.textOnSurfaceDefault,
                        ),
                      ),
                    ),
          ),
        ),
      ),
    );
  }

  Widget searchScanOptionCard({
    required BuildContext context,
    required bool isCardDisable,
    required String title,
    required String icon,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: isCardDisable ? onTap : null,
      child: Container(
        height: context.dsSizes.sz900,
        decoration: BoxDecoration(
          color: isCardDisable ? Color(0xFF304D4E) : DSBaseColors.darkGreen700,
          borderRadius: BorderRadius.circular(context.dsRadius.rd200),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: context.dsSpacing.sp100,
          children: [
            DSImage.asset(
              icon,
              color:
                  isCardDisable
                      ? context.dsColors.iconOnSurfaceDefault
                      : Color(0xFF516D6E),
            ),
            DSText(
              text: title,
              textStyle: DSTextStyleType.primaryCaptionSemibold,
              textColor:
                  isCardDisable
                      ? context.dsColors.textOnSurfaceDefault
                      : Color(0xFF516D6E),
            ),
          ],
        ),
      ),
    );
  }
}
