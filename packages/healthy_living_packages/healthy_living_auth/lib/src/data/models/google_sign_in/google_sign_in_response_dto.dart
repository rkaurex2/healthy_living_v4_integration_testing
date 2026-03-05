/// We're only using idToken from the actual response model (GoogleSignInAccount)
/// displayName, email, id, photoUrl can be as per requirement
class GoogleSignInResponseDTO {
  const GoogleSignInResponseDTO({this.idToken});

  /// An OpenID Connect ID token that identifies the user.
  final String? idToken;
}