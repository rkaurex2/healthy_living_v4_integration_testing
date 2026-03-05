import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_product_detail/l10n/healthy_living_product_detail_localizations.dart';

class ProductVerifiedDialogue extends StatefulWidget {
  const ProductVerifiedDialogue({super.key});

  @override
  State<ProductVerifiedDialogue> createState() =>
      _ProductVerifiedDialogueState();
}

class _ProductVerifiedDialogueState extends State<ProductVerifiedDialogue>
    with TickerProviderStateMixin {
  bool _expanded = false;

  void _toggle() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Color borderColor = context.dsColors.strokeNeutralDefault;
    final Color surfaceColor = context.dsColors.surfaceNeutralContainerWhite;
    final BorderRadius borderRadius = BorderRadius.circular(
      context.dsRadius.rd300,
    );
    final localizations = HealthyLivingProductDetailLocalizations.of(context)!;

    return InkWell(
      borderRadius: borderRadius,
      onTap: _toggle,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: surfaceColor,
          borderRadius: borderRadius,
          border: Border.all(color: borderColor),
        ),
        child: Padding(
          padding: EdgeInsets.all(context.dsSpacing.sp300),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: context.dsSpacing.sp300,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: context.dsSpacing.sp200,
                children: [
                  Container(
                    padding: EdgeInsets.all(context.dsSpacing.sp100),
                    decoration: BoxDecoration(
                      color: context.dsColors.surfaceNeutralContainerWhite,
                      borderRadius: BorderRadius.circular(
                        context.dsRadius.rd1000,
                      ),
                    ),
                    child: DSImage.asset(
                      DSIcons.icEWGVerified,
                      width: context.dsSizes.sz600,
                      height: context.dsSizes.sz600,
                    ),
                  ),
                  Expanded(
                    child: DSText(
                      text:
                          localizations
                              .productDetail_verifiedDialogue_verifiedByEWGText,
                      textStyle: DSTextStyleType.primarySubHeadingS,
                      textColor: context.dsColors.textNeutralOnWhite,
                    ),
                  ),
                  DSImage.asset(
                    DSIcons.icWarningInformation,
                    color: context.dsColors.iconPrimary,
                    width: context.dsSizes.sz400,
                    height: context.dsSizes.sz400,
                  ),
                ],
              ),
              if (_expanded) ...{
                DSText(
                  text:
                      localizations
                          .productDetail_verifiedDialogue_verifiedDescription,
                  textStyle: DSTextStyleType.primaryBodySRegular,
                  textColor: context.dsColors.textNeutralSecondary,
                ),
              },
            ],
          ),
        ),
      ),
    );
  }
}
