import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/forgot_password/forgot_password_bloc.dart';
import 'package:healthy_living_auth/src/ui/widgets/forgot_password_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class ForgotPasswordScreens extends StatefulWidget {
  const ForgotPasswordScreens({super.key});

  @override
  State<ForgotPasswordScreens> createState() => _ForgotPasswordScreensState();
}

class _ForgotPasswordScreensState extends State<ForgotPasswordScreens> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
      create: (_) => injector.get<ForgotPasswordBloc>(),
      child: ForgotPasswordContentScreen(),
    );
  }
}
