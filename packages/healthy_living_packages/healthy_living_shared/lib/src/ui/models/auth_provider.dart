enum AuthProvider {
  email(value: "email"),
  apple(value: "apple"),
  google(value: "google"),
  googleAndroid(value: "google_android");

  const AuthProvider({required this.value});

  final String value;

  static AuthProvider? fromName(String? name) {
    for (final signUpType in AuthProvider.values) {
      bool isFound = signUpType.value.toLowerCase() == name?.toLowerCase();

      if (isFound) {
        return signUpType;
      }
    }
    return null;
  }
}
