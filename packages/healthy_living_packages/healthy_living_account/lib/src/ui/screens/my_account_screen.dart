import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_bloc.dart';
import 'package:healthy_living_account/src/ui/blocs/my_account_event.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

import 'package:healthy_living_account/src/ui/widgets/my_account_content_screen.dart';

class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomTabScreenPopScope(
      child: Scaffold(
        // KEY: TestKeys.accountScreen
        key: const Key('account_screen'),
        backgroundColor: context.dsColors.surfaceNeutralBackgroundWhite,
        body: SafeArea(
          child: BlocProvider<MyAccountBloc>(
            create:
                (_) => injector.get<MyAccountBloc>()..add(AccountInitialized()),
            child: MyAccountContentScreen(),
          ),
        ),
      ),
    );
  }
}
