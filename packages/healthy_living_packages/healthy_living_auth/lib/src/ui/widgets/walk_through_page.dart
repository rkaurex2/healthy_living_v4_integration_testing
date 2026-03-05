import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_auth/l10n/healthy_living_auth_localizations.dart';
import 'package:healthy_living_auth/src/ui/models/walk_through_type.dart';
import 'package:healthy_living_auth/src/ui/widgets/walk_through_feature_type_widget.dart';

class WalkthroughPage extends StatelessWidget {
  final String title;
  final String description;
  final String? headerImage;
  final String? middleImage;
  final WalkThroughType? type;
  final VoidCallback onTapNext;

  const WalkthroughPage({
    required this.title,
    required this.description,
    required this.onTapNext,
    this.headerImage,
    this.middleImage,
    this.type,
    super.key,
  });

  factory WalkthroughPage.regular({
    required String title,
    required String description,
    required String middleImage,
    required VoidCallback onTapNext,
  }) => WalkthroughPage(
    title: title,
    description: description,
    middleImage: middleImage,
    type: WalkThroughType.regular,
    onTapNext: onTapNext,
  );

  factory WalkthroughPage.custom({
    required VoidCallback onTapNext,
    required String title,
    required String description,
    String? imagePath,
  }) => WalkthroughPage(
    title: title,
    description: description,
    headerImage: imagePath ?? "",
    type: WalkThroughType.custom,
    onTapNext: onTapNext,
  );

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAuthLocalizations.of(context)!;

    return Column(
      children: [
        // Scrollable content
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: context.dsSpacing.sp400,
              right: context.dsSpacing.sp400,
              bottom: context.dsSpacing.sp900, // ensures no overlap
            ),
            child:
                type == WalkThroughType.custom
                    ? _buildCustomContent(context)
                    : _buildRegularContent(context),
          ),
        ),

        // Fixed Next Button
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.dsSpacing.sp400,
            vertical: context.dsSpacing.sp400,
          ),
          child: DSButtonSecondary(
            text: localization.auth_walkthrough_next,
            size: DSButtonSize.small,
            onPressed: onTapNext,
          ),
        ),
      ],
    );
  }

  Widget _buildCustomContent(BuildContext context) {
    return Column(
      children: [
        if (headerImage != null) ...[
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp500),
          DSImage.asset(headerImage!),
        ],
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        DSText(
          text: title,
          textStyle: DSTextStyleType.secondaryHeadingL,
          textColor: context.dsColors.textPrimaryDefault,
          textAlign: TextAlign.center,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp400),
        DSText(
          text: description,
          textStyle: DSTextStyleType.primaryBodyMRegular,
          textColor: context.dsColors.textNeutralOnWhite,
          textAlign: TextAlign.center,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
        WalkThroughFeatureTypeWidget(),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
      ],
    );
  }

  Widget _buildRegularContent(BuildContext context) {
    return Column(
      children: [
        DSImage.asset(
          DSIcons.icHealthyLivingLogoOneLine,
          width: 145,
          height: 29.8,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),

        if (middleImage != null) ...[
          DSImage.asset(
            middleImage!,
            height: MediaQuery.of(context).size.height * 0.25,
          ),
          DSSpacingWidget.vertical(spacing: context.dsSpacing.sp700),
        ],

        DSText(
          text: title,
          textStyle: DSTextStyleType.secondaryHeadingL,
          textColor: context.dsColors.textPrimaryDefault,
          textAlign: TextAlign.center,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp600),
        DSText(
          text: description,
          textStyle: DSTextStyleType.primaryBodyMRegular,
          textColor: context.dsColors.textNeutralOnWhite,
          textAlign: TextAlign.center,
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp200),
      ],
    );
  }
}
