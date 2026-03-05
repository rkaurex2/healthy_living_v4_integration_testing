import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart';
import 'package:healthy_living_auth/src/ui/widgets/lets_get_started_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class LetsGetStartedScreen extends StatelessWidget {
  const LetsGetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.dsColors.surfacePrimaryDefault,
      body: SafeArea(
        child: BlocProvider<FtUxBloc>(
          create: (_) => injector.get<FtUxBloc>(),
          child: LetsGetStartedContentScreen(),
        ),
      ),
    );
  }
}
