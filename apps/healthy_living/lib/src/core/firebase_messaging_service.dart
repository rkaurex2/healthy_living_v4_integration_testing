import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living/src/core/local_notification_service.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class FirebaseMessagingService {
  FirebaseMessagingService._internal();

  static final FirebaseMessagingService _instance =
      FirebaseMessagingService._internal();

  factory FirebaseMessagingService.instance() => _instance;

  LocalNotificationsService? _localNotificationsService;

  /// Initialize Firebase Messaging and sets up all message listeners
  Future<void> init({
    required LocalNotificationsService localNotificationsService,
  }) async {
    _localNotificationsService = localNotificationsService;
    killedStateRemoteMessage = null;

    await _requestPermission();

    await _handlePushNotificationsToken();

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    FirebaseMessaging.onMessage.listen(_onForegroundMessage);

    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenedApp);

    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      killedStateRemoteMessage = initialMessage;
    }
  }

  Future<void> _handlePushNotificationsToken() async {
    final messaging = FirebaseMessaging.instance;

    if (Platform.isIOS) {
      final apnsToken = await messaging.getAPNSToken();
      debugPrint('APNs token (may be null initially): $apnsToken');

      if (apnsToken == null) {
        _listenForTokenRefresh();
        return;
      }
    }

    await _getAndLogFcmToken();
    _listenForTokenRefresh();
  }

  Future<void> _getAndLogFcmToken() async {
    try {
      final token = await FirebaseMessaging.instance.getToken();
      debugPrint('Push notification token: $token');
    } catch (e) {
      debugPrint('Failed to get FCM token: $e');
    }
  }

  void _listenForTokenRefresh() {
    FirebaseMessaging.instance.onTokenRefresh.listen((token) {
      debugPrint('FCM token refreshed: $token');
    });
  }


  Future<NotificationSettings> _requestPermission() async {
    return await FirebaseMessaging.instance.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  /// Handles messages received while the app is in the foreground
  void _onForegroundMessage(RemoteMessage message) {
    final notificationData = message.notification;
    if (notificationData != null) {
      _localNotificationsService?.showNotification(
        notificationData.title,
        notificationData.body,
        message.data,
      );
    }
  }

  /// Handles notification taps when app is opened from the background or terminated state
  void _onMessageOpenedApp(RemoteMessage message) async {
      messageStreamController.add(message);
  }
}

/// Background message handler (must be top-level function or static)
/// Handles messages when the app is fully terminated
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint('Background message received: ${message.data.toString()}');
}
