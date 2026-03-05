import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_in_bloc/sign_in_bloc.dart';
import 'package:healthy_living_auth/src/ui/widgets/signin_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SignInScreen extends StatefulWidget {
  final bool hideBackButton;
  final String openedFrom;
  final int? myListTapIndex;

  const SignInScreen({
    required this.openedFrom,
    this.hideBackButton = false,
    this.myListTapIndex,
    super.key,
  });

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (_) => injector.get<SignInBloc>(),
      child: SignInContentScreen(
        hideBackButton: widget.hideBackButton,
        openedFrom: widget.openedFrom,
        myListTapIndex: widget.myListTapIndex,
      ),
    );
  }
}
