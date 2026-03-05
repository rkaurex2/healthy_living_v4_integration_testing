import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_sign_up_bloc/sign_up_event.dart';
import 'package:healthy_living_auth/src/ui/widgets/create_account_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CreateAccountScreen extends StatefulWidget {
  final String openedFrom;
  final int? myListTapIndex;

  const CreateAccountScreen({
    required this.openedFrom,
    super.key,
    this.myListTapIndex,
  });

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignUpBloc>(
      create: (_) => injector.get<SignUpBloc>()..add(SignupInitialized()),
      child: CreateAccountContentScreen(
        openedFrom: widget.openedFrom,
        myListTapIndex: widget.myListTapIndex,
      ),
    );
  }
}
