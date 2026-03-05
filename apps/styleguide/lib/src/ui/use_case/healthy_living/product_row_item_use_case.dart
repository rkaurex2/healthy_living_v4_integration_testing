import 'package:flutter/material.dart';
import 'package:styleguide/l10n/styleguide_localizations.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:widgetbook/widgetbook.dart';

@UseCase(name: 'ProductRowItem', type: ProductRowItem)
Widget buildProductRowItemUseCase(BuildContext context) {
  final localization = StyleguideLocalizations.of(context)!;

  return Center(
    child: ProductRowItem(
      imageUrl: context.knobs.string(label: localization.styleguide_imageUrl_label, initialValue: ''),
      brand: context.knobs.string(
        label: localization.styleguide_brand_label,
        initialValue: localization.styleguide_brand_initialValue,
      ),
      title: context.knobs.string(
        label: localization.styleguide_toast_label,
        initialValue: localization.styleguide_product_title,
      ),
      isEWGVerified: context.knobs.boolean(
        label: localization.styleguide_ewgVerified_label,
        initialValue: false,
      ),
      score: context.knobs.stringOrNull(
        label: localization.styleguide_score_label,
        initialValue: localization.styleguide_score_initialValue,
      ),
      categoryType: context.knobs.stringOrNull(
        label: localization.styleguide_categoryType_label,
        initialValue: localization.styleguide_categoryType_initialValue,
      ),
    ),
  );
}
