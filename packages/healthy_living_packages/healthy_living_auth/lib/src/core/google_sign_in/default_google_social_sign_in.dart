import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/extensions/google_sign_in_exception_code_extension.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/google_social_sign_in.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_account.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_authentication.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception.dart';
import 'package:healthy_living_auth/src/core/google_sign_in/models/google_social_sign_in_exception_code.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@LazySingleton(as: GoogleSocialSignIn)
class DefaultGoogleSocialSignIn implements GoogleSocialSignIn {
  static DefaultGoogleSocialSignIn? _instance;
  final GoogleSignIn _googleSignIn;

  DefaultGoogleSocialSignIn._internal({required GoogleSignIn googleSignIn})
    : _googleSignIn = googleSignIn;

  factory DefaultGoogleSocialSignIn({required GoogleSignIn googleSignIn}) {
    _instance ??= DefaultGoogleSocialSignIn._internal(
      googleSignIn: googleSignIn,
    );
    return _instance!;
  }

  @override
  Future<void> initialize({
    String? clientId,
    String? serverClientId,
    String? nonce,
    String? hostedDomain,
  }) async {
    try {
      await _googleSignIn.initialize(
        clientId: clientId,
        serverClientId: serverClientId,
        nonce: nonce,
        hostedDomain: hostedDomain,
      );
    } catch (exception) {
      debugPrint("Google Sign-In SDK failed to initialize");
    }
  }

  @override
  Future<GoogleSocialSignInAccount> authenticate() async {
    try {
      final account = await _googleSignIn.authenticate();
      return GoogleSocialSignInAccount(
        displayName: account.displayName,
        email: account.email,
        id: account.id,
        photoUrl: account.photoUrl,
        authentication: GoogleSocialSignInAuthentication(
          idToken: account.authentication.idToken,
        ),
      );
    } on GoogleSignInException catch (googleSignInException) {
      throw GoogleSocialSignInException(
        code: googleSignInException.code.toGoogleSocialSignInExceptionCode(),
        description: googleSignInException.description,
        details: googleSignInException.details,
      );
    } catch (generalException) {
      if (generalException is NetworkException) {
        rethrow;
      } else {
        throw GoogleSocialSignInException(
          code: GoogleSocialSignInExceptionCode.unknownError,
        );
      }
    }
  }

  @override
  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}
