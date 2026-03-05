import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_bloc.dart';
import 'package:healthy_living_auth/src/ui/blocs/auth_social_login_bloc/auth_social_login_event.dart';
import 'package:healthy_living_auth/src/ui/models/auth_mode.dart';
import 'package:healthy_living_auth/src/ui/widgets/auth_content_screen.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class AuthScreen extends StatelessWidget {
  final AuthScreenParams authScreenParams;
  final String openedFrom;
  final int? myListTapIndex;

  const AuthScreen({
    required this.authScreenParams,
    required this.openedFrom,
    this.myListTapIndex,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: BlocProvider<AuthSocialLoginBloc>(
          create:
              (_) =>
                  injector.get<AuthSocialLoginBloc>()..add(
                    AuthSocialLoginEvent.authScreenInitialized(
                      authMode:
                          authScreenParams.isLogin
                              ? AuthMode.signIn
                              : AuthMode.signUp,
                    ),
                  ),
          child: AuthContentScreen(
            openedFrom: openedFrom,
            myListTapIndex: myListTapIndex,
          ),
        ),
      ),
    );
  }
}
