import 'package:flutter/material.dart';
import 'package:styleguide/l10n/styleguide_localizations.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:widgetbook/widgetbook.dart';

@UseCase(name: 'RatingScoreBadge', type: RatingScoreBadge)
Widget buildRatingScoreBadgeUseCase(BuildContext context) {
  final localization = StyleguideLocalizations.of(context)!;
  final hazard = context.knobs.list<HazardLevel?>(
    label: localization.styleguide_hazardLevel_label,
    options: <HazardLevel?>[
      null,
      HazardLevel.lowest,
      HazardLevel.low,
      HazardLevel.moderate,
      HazardLevel.high,
      HazardLevel.highest,
      HazardLevel.verified,
    ],
    initialOption: HazardLevel.low,
    labelBuilder: (value) => value?.name ?? '',
  );

  final scoreText = context.knobs.stringOrNull(
    label: localization.styleguide_text_label,
    initialValue: localization.styleguide_score_initialValue,
  );

  return RatingScoreBadge(
    text: scoreText,
    backgroundColor: hazard?.displayColor(context) ?? Colors.transparent,
  );
}
