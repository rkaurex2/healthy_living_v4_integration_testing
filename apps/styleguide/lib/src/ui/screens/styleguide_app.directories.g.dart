// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:styleguide/src/ui/use_case/ds_button/ds_button_icon_use_case.dart'
    as _i10;
import 'package:styleguide/src/ui/use_case/ds_button/ds_button_neutral_use_case.dart'
    as _i12;
import 'package:styleguide/src/ui/use_case/ds_button/ds_button_primary_use_case.dart'
    as _i13;
import 'package:styleguide/src/ui/use_case/ds_button/ds_button_secondary_use_case.dart'
    as _i14;
import 'package:styleguide/src/ui/use_case/ds_button/ds_button_tertiary_use_case.dart'
    as _i15;
import 'package:styleguide/src/ui/use_case/ds_button_icon_circle/ds_button_icon_circle_use_case.dart'
    as _i11;
import 'package:styleguide/src/ui/use_case/ds_checkbox/ds_checkbox_use_case.dart'
    as _i16;
import 'package:styleguide/src/ui/use_case/ds_checklist/ds_checklist_selector_use_case.dart'
    as _i17;
import 'package:styleguide/src/ui/use_case/ds_search/ds_search_use_case.dart'
    as _i19;
import 'package:styleguide/src/ui/use_case/ds_text/all_styles_story.dart'
    as _i2;
import 'package:styleguide/src/ui/use_case/ds_text/default_story.dart' as _i3;
import 'package:styleguide/src/ui/use_case/ds_text/rich_text_story.dart' as _i4;
import 'package:styleguide/src/ui/use_case/ds_text_input_use_case.dart' as _i5;
import 'package:styleguide/src/ui/use_case/ds_toggle/ds_toggle_use_case.dart'
    as _i6;
import 'package:styleguide/src/ui/use_case/healthy_living/product_row_item_use_case.dart'
    as _i8;
import 'package:styleguide/src/ui/use_case/healthy_living/rating_score_badge_use_case.dart'
    as _i18;
import 'package:styleguide/src/ui/use_case/healthy_living/score_badge_label_with_data_use_case.dart'
    as _i9;
import 'package:styleguide/src/ui/use_case/no_search_results_widget_use_case.dart'
    as _i7;
import 'package:styleguide/src/ui/use_case/toast/ds_toast_use_case.dart'
    as _i20;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'ui',
    children: [
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookComponent(
            name: 'DSText',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'all_styles',
                builder: _i2.buildDSTextAllStylesUseCase,
              ),
              _i1.WidgetbookUseCase(
                name: 'default',
                builder: _i3.buildDSTextDefaultUseCase,
              ),
              _i1.WidgetbookUseCase(
                name: 'rich_text',
                builder: _i4.buildDSTextRichTextUseCase,
              ),
            ],
          ),
          _i1.WidgetbookLeafComponent(
            name: 'DSTextInput',
            useCase: _i1.WidgetbookUseCase(
              name: 'Full Configuration',
              builder: _i5.buildDSTextInputUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'DSToggle',
            useCase: _i1.WidgetbookUseCase(
              name: 'DSToggle',
              builder: _i6.buildDSToggleUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'NoSearchResultsWidget',
            useCase: _i1.WidgetbookUseCase(
              name: 'NoSearchResultsWidget',
              builder: _i7.buildNoSearchResultsWidgetUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'ProductRowItem',
            useCase: _i1.WidgetbookUseCase(
              name: 'ProductRowItem',
              builder: _i8.buildProductRowItemUseCase,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'ScoreBadgeLabelWithData',
            useCase: _i1.WidgetbookUseCase(
              name: 'ScoreBadgeLabelWithData',
              builder: _i9.buildScoreBadgeLabelWithDataUseCase,
            ),
          ),
          _i1.WidgetbookFolder(
            name: 'button',
            children: [
              _i1.WidgetbookFolder(
                name: 'button_icon',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'DSButtonIcon',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'ds_button_icon_use_case',
                      builder: _i10.buildDSButtonIconUseCase,
                    ),
                  ),
                  _i1.WidgetbookLeafComponent(
                    name: 'DSButtonIconCircle',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'ds_button_icon_circle_use_case',
                      builder: _i11.buildDSButtonIconCircleUseCase,
                    ),
                  ),
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'neutral',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'DSButtonNeutral',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'ds_button_neutral_use_case',
                      builder: _i12.buildDSButtonNeutralUseCase,
                    ),
                  ),
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'primary',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'DSButtonPrimary',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'ds_button_primary_use_case',
                      builder: _i13.buildDSButtonPrimaryUseCase,
                    ),
                  ),
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'secondary',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'DSButtonSecondary',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'ds_button_secondary_use_case',
                      builder: _i14.buildDSButtonSecondaryUseCase,
                    ),
                  ),
                ],
              ),
              _i1.WidgetbookFolder(
                name: 'tertiary',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'DSButtonTertiary',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'ds_button_tertiary_use_case',
                      builder: _i15.buildDSButtonSecondaryUseCase,
                    ),
                  ),
                ],
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'checkbox',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'DSCheckbox',
                useCase: _i1.WidgetbookUseCase(
                  name: 'ds_checkbox_use_case',
                  builder: _i16.buildDSCheckboxUseCase,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'checklist',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'DSChecklistSelector',
                useCase: _i1.WidgetbookUseCase(
                  name: 'ds_checklist_selector_use_case',
                  builder: _i17.buildDSChecklistSelectorUseCase,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'ratings',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'RatingScoreBadge',
                useCase: _i1.WidgetbookUseCase(
                  name: 'RatingScoreBadge',
                  builder: _i18.buildRatingScoreBadgeUseCase,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'search',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'DSSearch',
                useCase: _i1.WidgetbookUseCase(
                  name: 'ds_search_use_case',
                  builder: _i19.buildDSSearchUseCase,
                ),
              ),
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'toast',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'DSToast',
                useCase: _i1.WidgetbookUseCase(
                  name: 'DSToast',
                  builder: _i20.buildDSToastUseCase,
                ),
              ),
            ],
          ),
        ],
      ),
    ],
  ),
];
