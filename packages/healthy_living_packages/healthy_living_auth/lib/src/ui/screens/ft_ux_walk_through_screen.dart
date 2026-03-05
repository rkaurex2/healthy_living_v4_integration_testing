import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_bloc.dart';
import 'package:healthy_living_auth/src/ui/widgets/ft_ux_walk_through_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FtUxWalkThroughScreen extends StatefulWidget {
  const FtUxWalkThroughScreen({super.key});

  @override
  State<FtUxWalkThroughScreen> createState() => _FtUxWalkThroughScreenState();
}

class _FtUxWalkThroughScreenState extends State<FtUxWalkThroughScreen> {
  DSCarouselController dsCarouselController = DSCarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralBackgroundLight,
      body: BlocProvider<FtUxBloc>(
        create: (_) => injector.get<FtUxBloc>(),
        child: FtUxWalkThroughContentScreen(),
      ),
    );
  }
}
