import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:healthy_living/src/app_router_config.dart';
import 'package:healthy_living/src/core/link_navigator.dart';
import 'package:healthy_living/src/domain/models/deep_link_data_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AppRoutes, HealthyLivingSharedUtils, StringConstants;

class BranchDeepLinkListener extends StatefulWidget {
  final Widget child;

  const BranchDeepLinkListener({required this.child, super.key});

  @override
  State<BranchDeepLinkListener> createState() => _BranchDeepLinkListenerState();
}

class _BranchDeepLinkListenerState extends State<BranchDeepLinkListener> {
  StreamSubscription<Map>? _sub;

  @override
  void initState() {
    super.initState();
    _initDeepLinkListener();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  void _initDeepLinkListener() {
    _sub = FlutterBranchSdk.listSession().listen((event) {
      final data = Map<String, dynamic>.from(event);

      if (_isInvalid(data)) return;
      _processDeepLink(data);
    }, onError: (e) => debugPrint("[Branch] Deep link error: $e"));
  }

  bool _isInvalid(Map<String, dynamic> data) {
    return data.isEmpty ||
        data[StringConstants.clickedBranchLink] != true ||
        data.containsKey(StringConstants.nonBranchLink);
  }

  void _processDeepLink(Map<String, dynamic> data) {
    try {
      final payload = DeepLinkDataModel.fromMap(data);

      if (payload.type.isEmpty) {
        debugPrint('[Branch] Unknown deep link type');
        return;
      }

      _navigateOrQueue(payload);
    } catch (e, st) {
      debugPrint('[Branch] Error parsing deep link: $e\n$st');
    }
  }

  Future<void> _navigateOrQueue(DeepLinkDataModel payload) async {
    if (HealthyLivingSharedUtils.matchesRoute(
      AppRoutes.splashScreen,
      lastKnownRoute,
    )) {
      await Future.delayed(const Duration(milliseconds: 6000));
    }

    await _doNavigation(payload);
  }

  Future<void> _doNavigation(DeepLinkDataModel payload) async {
    final currentContext = rootNavigatorKey.currentContext;
    if (currentContext != null && currentContext.mounted) {
      try {
        await LinkNavigator.navigate(currentContext, payload, StringConstants.deepLink);
      } catch (e, st) {
        debugPrint('[Branch] Error during navigation: $e\n$st');
      }
    } else {
      debugPrint('[Branch] Navigation context not ready, queuing deep link.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
