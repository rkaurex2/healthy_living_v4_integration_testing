import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

import 'package:healthy_living_account/src/ui/widgets/account_content_tiles.dart';

class ResourcesSection extends StatelessWidget {
  final String email;
  final String? country;
  final String zipcode;
  final bool? isGuestUserLogin;

  const ResourcesSection({
    required this.email,
    required this.country,
    required this.zipcode,
    this.isGuestUserLogin = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: context.dsSizes.sz200),
          child: DSText(
            text: localization.account_myAccount_resources,
            textStyle: DSTextStyleType.secondaryHeadingS,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        ),
        DSSpacingWidget.vertical(spacing: context.dsSpacing.sp100),
        Container(
          decoration: BoxDecoration(
            color: context.dsColors.surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(context.dsRadius.rd300),
          ),

          child: Column(
            children: [
              AccountContentTiles(
                icon: DSIcons.icScore,
                title: localization.account_myAccount_aboutScores,
                onTap: () {
                  context.pushNamed(AppRoutes.aboutScores.name);
                },
              ),
              DSDivider(),
              AccountContentTiles(
                icon: DSIcons.icPrimaryLogo,
                title: localization.account_myAccount_aboutEWG,
                onTap: () {
                  context.pushNamed(AppRoutes.aboutEWG.name);
                },
              ),
              DSDivider(),
              // KEY: TestKeys.newsletterLink
              AccountContentTiles(
                key: const Key('newsletter_link'),
                icon: DSIcons.icNewsletter,
                title: localization.account_myAccount_newsletter,
                onTap: () {
                  context.push(
                    AppRoutes.newsletter.path,
                    extra: NewsletterScreenExtraParams(
                      country: country,
                      email: email,
                      openedFrom: StringConstants.accounts,
                      zipcode: zipcode,
                      isOpenFromSocialLogin: false,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
