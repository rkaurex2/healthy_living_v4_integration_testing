import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show AppRoutes;

class BottomTabScreenPopScope extends StatelessWidget {
  const BottomTabScreenPopScope({required this.child, this.onPop, super.key});

  final Widget child;
  final VoidCallback? onPop;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) return;
        if (onPop != null) {
          onPop!();
        } else {
          context.go(AppRoutes.home.path);
        }
      },
      child: child,
    );
  }
}
