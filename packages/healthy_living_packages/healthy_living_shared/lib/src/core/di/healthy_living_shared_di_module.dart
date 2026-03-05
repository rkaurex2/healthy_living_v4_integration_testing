import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

@module
abstract class HealthyLivingSharedDIModule {
  @lazySingleton
  Uuid get uuid => const Uuid();

  @lazySingleton
  Connectivity getConnectivity() => Connectivity();

  @lazySingleton
  FirebaseAnalytics get firebaseAnalytics =>
      FirebaseAnalytics.instance;
}
