import 'package:country_code_picker/country_code_picker.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CountryCodePickerWidget extends StatelessWidget {
  const CountryCodePickerWidget({
    super.key,
    this.onChanged,
    this.initialSelection,
  });

  final String? initialSelection;
  final ValueChanged<CountryCode>? onChanged;

  @override
  Widget build(BuildContext context) {
    final localizations = HealthyLivingSharedLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: context.dsSpacing.sp100,
      children: [
        DSText(
          text: localizations.shared_countryPicker_country,
          textStyle: DSTextStyleType.primaryCaption,
          textColor: context.dsColors.textNeutralOnWhite,
        ),
        Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: [
            Container(
              height: context.dsSizes.sz800,
              decoration: BoxDecoration(
                color: context.dsColors.surfaceNeutralContainerWhite,
                border: Border.all(
                  color: context.dsColors.strokeNeutralDefault,
                ),
                borderRadius: BorderRadius.circular(context.dsRadius.rd100),
              ),
              child: CountryCodePicker(
                onChanged: onChanged,
                initialSelection:
                    initialSelection ??
                    StringConstants.defaultSelectedCountryCode,
                showCountryOnly: true,
                showOnlyCountryWhenClosed: true,
                hideSearch: true,
                alignLeft: true,
                headerText: localizations.shared_countryPicker_selectCountry,
                closeIcon: Icon(
                  Icons.close,
                  color: context.dsColors.iconPrimary,
                  size: context.dsSizes.sz500,
                ),
                topBarPadding: EdgeInsets.fromLTRB(
                  20,
                  context.dsSpacing.sp100,
                  context.dsSpacing.sp200,
                  context.dsSpacing.sp100,
                ),
                padding: EdgeInsets.only(right: context.dsSpacing.sp300),

                /// margin works for flag icon only
                margin: EdgeInsets.only(right: context.dsSpacing.sp200),
                textStyle: DSTextStyleType.primaryBodyMRegular
                    .getTextStyle()
                    .copyWith(color: context.dsColors.textNeutralOnWhite),
                dialogTextStyle: DSTextStyleType.primaryBodyMRegular
                    .getTextStyle()
                    .copyWith(color: context.dsColors.textNeutralOnWhite),
                headerTextStyle: DSTextStyleType.primarySubHeadingM
                    .getTextStyle()
                    .copyWith(color: Colors.black),
                barrierColor: Colors.black.withValues(alpha: 0.5),
                dialogBackgroundColor:
                    context.dsColors.surfaceNeutralContainerWhite,
              ),
            ),
            Positioned(
              right: context.dsSpacing.sp300,
              child: IgnorePointer(
                child: DSImage.asset(
                  DSIcons.icChevronDownSmall,
                  color: context.dsColors.iconPrimary,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
