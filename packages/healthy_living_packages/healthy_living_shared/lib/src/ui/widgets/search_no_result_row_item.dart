import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchNoResultRowItem extends StatelessWidget {
  const SearchNoResultRowItem({
    required this.title,
    required this.highLightTexts,
    super.key,
  });

  final String title;
  final List<String> highLightTexts;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(vertical: context.dsSpacing.sp200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            child: SubstringHighlightWidget(
              text: title,
              textStyle: DSTextStyleType.primaryBodyMRegular
                  .getTextStyle()
                  .copyWith(color: context.dsColors.textNeutralOnWhite),
              highlightTextStyle: DSTextStyleType.primaryBodyMRegular
                  .getTextStyle()
                  .copyWith(
                color: context.dsColors.textPrimaryHighlightSearch,
              ),
              highlightTexts: highLightTexts,
            ),
          ),
        ],
      ),
    );
  }
}