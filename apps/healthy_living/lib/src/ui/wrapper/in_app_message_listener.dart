import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:firebase_in_app_messaging/firebase_in_app_messaging.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living/src/app_router_config.dart';
import 'package:healthy_living/src/core/link_navigator.dart';
import 'package:healthy_living/src/domain/models/deep_link_data_model.dart';
import 'package:healthy_living/src/domain/models/notification_message_data_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class InAppMessagingListener extends StatefulWidget {
  final Widget child;

  const InAppMessagingListener({required this.child, super.key});

  @override
  State<InAppMessagingListener> createState() => _InAppMessagingListenerState();
}

class _InAppMessagingListenerState extends State<InAppMessagingListener> {
  final _appLinks = AppLinks();
  StreamSubscription<Uri?>? _streamSubscription;

  @override
  void initState() {
    super.initState();
    FirebaseInAppMessaging.instance.setMessagesSuppressed(false);
    _initListener();
  }

  void _initListener() {
    _streamSubscription = _appLinks.uriLinkStream.listen(
          (uri) async {

        await _handleClick(uri);
      },
      onError: (e) => debugPrint('[IAM] Listener error: $e'),
    );
  }

  Future<void> _handleClick(Uri uri) async {
    final uriString = uri.toString();

    if (!uriString.contains('source=fiam')) {
      return;
    }

    final params = Map<String, String>.from(uri.queryParameters);
    params.remove('source');

    final cleanedUri = params.isEmpty
        ? uri.replace(queryParameters: null)
        : uri.replace(queryParameters: params);

    final cleanedUriString = cleanedUri.toString();
    final payload = NotificationDeepLinkMapper.fromNotificationData({
      StringConstants.urlType: cleanedUriString,
    });

    if (payload == null) {
      return;
    }

    await _navigateOrQueue(payload);
  }

  Future<void> _navigateOrQueue(DeepLinkDataModel payload) async {
    final context = rootNavigatorKey.currentContext;
    if (context == null || !context.mounted) {
      return;
    }

    await _doNavigation(context, payload);
  }

  Future<void> _doNavigation(
      BuildContext context, DeepLinkDataModel payload) async {
    try {
      await LinkNavigator.navigate(context, payload, StringConstants.inAppMessage);
    } catch (e, st) {
      debugPrint('[IAM] Navigation error: $e\n$st');
    }
  }

  @override
  void dispose() {
    _streamSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
