import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_account/l10n/healthy_living_account_localizations.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_account/src/ui/widgets/my_account_detail_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class MyAccountDetailScreen extends StatelessWidget {
  const MyAccountDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = HealthyLivingAccountLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: BlocProvider<MyAccountBloc>(
        create: (_) => injector.get<MyAccountBloc>()..add(AccountInitialized()),
        child: SafeArea(
          child: Column(
            children: [
              HeaderWithTitle(
                leadIcon: DSIcons.icArrowLeft,
                title: localization.account_myAccount_myAccount,
                onTapLeadIcon: () {
                  context.pop();
                },
              ),
              Expanded(child: MyAccountDetailContentScreen()),
            ],
          ),
        ),
      ),
    );
  }
}
