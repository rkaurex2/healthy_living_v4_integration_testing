import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/widgets/account_content_tiles.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: context.dsSpacing.sp200,
          ),
          child: DSText(
            text: localization.account_myAccount_support,
            textStyle: DSTextStyleType.secondaryHeadingS,
            textColor: context.dsColors.textNeutralOnWhite,
          ),
        ),
        DSSpacingWidget.vertical(
          spacing: context.dsSpacing.sp100,
        ),
        Container(
          decoration: BoxDecoration(
            color:
            context
                .dsColors
                .surfaceNeutralContainerWhite,
            borderRadius: BorderRadius.circular(
              context.dsRadius.rd300,
            ),
          ),
          // KEY: TestKeys.copyIdButton
          child: AccountContentTiles(
            key: const Key('copy_id_button'),
            title:
            localization.account_support_copyAccountId,
            trailIconPath: DSIcons.icCopy,
            onTap: () {
              context.read<MyAccountBloc>().add(
                MyAccountEvent.copyRevenueCatId(),
              );
            },
          ),
        ),
      ],
    );
  }
}
