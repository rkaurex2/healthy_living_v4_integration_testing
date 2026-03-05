import 'dart:async';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseOptions;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:healthy_living/firebase_options_stage.dart'
    as firebase_options_stage;
import 'package:healthy_living/firebase_options_prod.dart'
    as firebase_options_prod;
import 'package:healthy_living/src/core/di/healthy_living_di_setup.dart';
import 'package:healthy_living/src/core/firebase_messaging_service.dart';
import 'package:healthy_living/src/core/local_notification_service.dart';
import 'package:healthy_living/src/ui/screens/main_screen.dart';
import 'package:healthy_living_auth/healthy_living_auth.dart'
    show GoogleSocialSignIn;
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const ProviderScope(child: MainScreen()));
}

Future<void> initializeDependencies() async {
  // Loading *.env file data in app.
  const environmentName = String.fromEnvironment(DartDefineKeys.environment);
  await EnvConfig.init(envFileName: "assets/env/$environmentName.env");

  // DI initialization
  await initDependencyInjection();
  await initGoogleSignIn();
  await initBranchSDK();
  await initPurchasesSdk();
  await initFirebase(environmentName);

  final localNotificationService = LocalNotificationsService.instance();
  await localNotificationService.init();
  final firebaseMessagingService = FirebaseMessagingService.instance();
  await firebaseMessagingService.init(
    localNotificationsService: localNotificationService,
  );

  if (kReleaseMode) {
    setupFirebaseCrashlytics();
  }
}

Future<void> initGoogleSignIn() async {
  final clientId =
      Platform.isAndroid
          ? EnvConfig().androidGoogleClientId
          : EnvConfig().iosGoogleClientId;
  final serverClientId =
      Platform.isAndroid ? EnvConfig().serverGoogleClientId : null;

  await injector.get<GoogleSocialSignIn>().initialize(
    clientId: clientId,
    serverClientId: serverClientId,
  );
}

Future<void> initBranchSDK() async {
  await FlutterBranchSdk.init(
    enableLogging: true,
    branchAttributionLevel: BranchAttributionLevel.FULL,
  );

  FlutterBranchSdk.setConsumerProtectionAttributionLevel(
    BranchAttributionLevel.FULL,
  );
}

Future<void> initFirebase(String environmentName) async {
  FirebaseOptions? options;
  if (environmentName == StringConstants.stageEnvironment) {
    options = firebase_options_stage.DefaultFirebaseOptions.currentPlatform;
  } else if (environmentName == StringConstants.prodEnvironment) {
    options = firebase_options_prod.DefaultFirebaseOptions.currentPlatform;
  }
  try {
    await Firebase.initializeApp(options: options);
    await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  } catch (e) {
    debugPrint("Failed to initialize Firebase: $e");
  }
}

void setupFirebaseCrashlytics() {
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}

Future<void> initPurchasesSdk() async {
  await Purchases.setLogLevel(LogLevel.debug);

  PurchasesConfiguration? configuration;
  if (Platform.isAndroid) {
    configuration = PurchasesConfiguration(EnvConfig().androidRevenueCatApiKey);
  } else if (Platform.isIOS) {
    configuration = PurchasesConfiguration(EnvConfig().iosRevenueCatApiKey);
  }

  if (configuration != null) {
    await Purchases.configure(configuration);
  }
}
