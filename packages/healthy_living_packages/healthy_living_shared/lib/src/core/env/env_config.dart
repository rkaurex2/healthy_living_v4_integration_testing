import 'package:flutter_dotenv/flutter_dotenv.dart';

final class EnvConfig {
  EnvConfig._private({
    required this.isSaveLogsEnabled,
    required this.apiURL,
    required this.androidGoogleClientId,
    required this.iosGoogleClientId,
    required this.serverGoogleClientId,
    required this.androidRevenueCatApiKey,
    required this.iosRevenueCatApiKey,
  });

  static EnvConfig? _instance;

  factory EnvConfig() {
    final data = dotenv.env;
    return _instance ??= EnvConfig._private(
      isSaveLogsEnabled: (data["SAVE_LOGS_ENABLED"] ?? "false") == "true",
      apiURL: data["API_URL"]!,
      androidGoogleClientId: data["ANDROID_GOOGLE_CLIENT_ID"]!,
      iosGoogleClientId: data["IOS_GOOGLE_CLIENT_ID"]!,
      serverGoogleClientId: data["SERVER_GOOGLE_CLIENT_ID"]!,
      androidRevenueCatApiKey: data["ANDROID_REVENUECAT_API_KEY"]!,
      iosRevenueCatApiKey: data["IOS_REVENUECAT_API_KEY"]!,
    );
  }

  static Future<void> init({required String envFileName}) async {
    await dotenv.load(fileName: envFileName);
  }

  final bool isSaveLogsEnabled;
  final String apiURL;
  final String androidGoogleClientId;
  final String iosGoogleClientId;
  final String serverGoogleClientId;
  final String androidRevenueCatApiKey;
  final String iosRevenueCatApiKey;
}
