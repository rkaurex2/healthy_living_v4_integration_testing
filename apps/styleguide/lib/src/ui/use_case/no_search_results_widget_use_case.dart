import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:styleguide/l10n/styleguide_localizations.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'NoSearchResultsWidget', type: NoSearchResultsWidget)
Widget buildNoSearchResultsWidgetUseCase(BuildContext context) {
  final localizations = StyleguideLocalizations.of(context)!;

  return NoSearchResultsWidget(
    title: localizations.styleguide_noSearchResult_title,
    description: localizations.styleguide_noSearchResult_description,
  );
}
