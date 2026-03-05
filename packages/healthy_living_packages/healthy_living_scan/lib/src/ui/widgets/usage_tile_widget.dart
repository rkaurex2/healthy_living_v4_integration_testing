import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_scan/l10n/healthy_living_scan_localizations.dart';
import 'package:healthy_living_scan/src/utils/submit_product_utils.dart';

class UsageTileWidget extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const UsageTileWidget({
    required this.value,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HealthyLivingScanLocalizations localization =
        HealthyLivingScanLocalizations.of(context)!;
    final usageList = SubmitProductUtils.getUsage(localization);
    return Row(
      children: [
        for (int i = 0; i < usageList.length; i++) ...[
          Expanded(
            child: InkWell(
              onTap: () => onChanged(usageList[i]),
              borderRadius: BorderRadius.circular(context.dsRadius.rd300),
              child: Container(
                height: 61,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color:
                        usageList[i] == value
                            ? context.dsColors.strokePrimaryDefault
                            : context.dsColors.strokeNeutralDefault,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(context.dsRadius.rd300),
                ),
                child: DSText(
                  text: usageList[i],
                  textStyle: DSTextStyleType.primaryBodyMMedium,
                  textColor: context.dsColors.textNeutralOnWhite,
                  lineHeight: 1.5,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          if (i != usageList.length - 1)
            SizedBox(width: context.dsSpacing.sp200),
        ],
      ],
    );
  }
}
