import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:styleguide/l10n/styleguide_localizations.dart';
import 'package:styleguide/src/util/styleguide_utils.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'ScoreBadgeLabelWithData', type: ScoreBadgeLabelWithData)
Widget buildScoreBadgeLabelWithDataUseCase(BuildContext context) {
  final localizations = StyleguideLocalizations.of(context)!;
  final score = context.knobs.list(
    label: localizations.styleguide_score_label,
    options: StyleguideUtils().getScoreList(),
  );
  final hazardText = score.ratingHazardLevel?.displayText(
    HealthyLivingSharedLocalizations.of(context)!,
  );
  final scoreBackgroundColor = score.ratingHazardLevel?.displayColor(context);

  return Center(
    child: ScoreBadgeLabelWithData(
      score: score,
      hazardText: hazardText,
      dataText: context.knobs.stringOrNull(
        label: localizations.styleguide_dataText_label,
        initialValue: localizations.styleguide_dataText_initialValue,
      ),
      scoreBackgroundColor: scoreBackgroundColor ?? Colors.transparent,
    ),
  );
}
