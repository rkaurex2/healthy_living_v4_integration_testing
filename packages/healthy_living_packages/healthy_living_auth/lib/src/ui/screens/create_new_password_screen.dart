import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/create_new_password/create_new_password_bloc.dart';
import 'package:healthy_living_auth/src/ui/widgets/create_new_password_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  final String openedFrom;
  final String code;

  const CreateNewPasswordScreen({required this.openedFrom, required this.code, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => injector.get<CreateNewPasswordBloc>(),
      child: CreateNewPasswordContentScreen(openedFrom: openedFrom, code: code),
    );
  }
}
