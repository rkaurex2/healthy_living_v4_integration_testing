import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/check_email/check_email_bloc.dart';
import 'package:healthy_living_auth/src/ui/widgets/check_your_email_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class CheckYourEmailScreen extends StatefulWidget {
  final String email;

  const CheckYourEmailScreen({required this.email, super.key});

  @override
  State<CheckYourEmailScreen> createState() => _CheckYourEmailScreenState();
}

class _CheckYourEmailScreenState extends State<CheckYourEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CheckEmailBloc>(
      create: (_) => injector.get<CheckEmailBloc>(),
      child: CheckYourEmailContentScreen(email: widget.email),
    );
  }
}
