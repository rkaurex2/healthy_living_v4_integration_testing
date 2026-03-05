import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living/src/app_router_config.dart';
import 'package:healthy_living/src/core/link_navigator.dart';
import 'package:healthy_living/src/domain/models/deep_link_data_model.dart';
import 'package:healthy_living/src/domain/models/notification_message_data_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class NotificationMessageListener extends StatefulWidget {
  final Widget child;

  const NotificationMessageListener({required this.child, super.key});

  @override
  State<NotificationMessageListener> createState() =>
      _NotificationMessageListenerState();
}

class _NotificationMessageListenerState
    extends State<NotificationMessageListener> {
  StreamSubscription<RemoteMessage>? _sub;

  @override
  void initState() {
    super.initState();
    _initNotificationListener();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  void _initNotificationListener() {
    _sub = messageStreamController.listen((RemoteMessage message) {
      if (message.data.isEmpty) return;
      _processNotification(message.data);
    }, onError: (e) => debugPrint('[Notification] Listener error: $e'));
  }

  void _processNotification(Map<String, dynamic> data) {
    try {
      final payload = NotificationDeepLinkMapper.fromNotificationData(data);

      if (payload == null) {
        debugPrint('[Notification] Invalid payload');
        return;
      }

      _navigateOrQueue(payload);
    } catch (e, st) {
      debugPrint('[Notification] Error parsing payload: $e\n$st');
    }
  }

  Future<void> _navigateOrQueue(DeepLinkDataModel payload) async {
    if (HealthyLivingSharedUtils.matchesRoute(
      AppRoutes.splashScreen,
      lastKnownRoute,
    )) {
      // Todo - This if block can be removed
      /// This will not execute as we're handling killed state message
      /// either on Let's get started or Home Screen
      await Future.delayed(const Duration(milliseconds: 6000));
    }

    await _doNavigation(payload);
  }

  Future<void> _doNavigation(DeepLinkDataModel payload) async {
    final context = rootNavigatorKey.currentContext;
    if (context == null || !context.mounted) return;

    try {
      await LinkNavigator.navigate(context, payload, StringConstants.notification);
    } catch (e, st) {
      debugPrint('[Notification] Navigation error: $e\n$st');
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
