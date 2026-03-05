import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class GuidesWebViewScreen extends StatelessWidget {
  final WebviewScreenParams ewgGuidesScreenParams;

  const GuidesWebViewScreen({
    required this.ewgGuidesScreenParams,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWithTitle(
              leadIcon: DSIcons.icArrowLeft,
              title: ewgGuidesScreenParams.title,
              onTapLeadIcon: () {
                context.pop();
              },
            ),
            Expanded(child: WebviewWidget(url: ewgGuidesScreenParams.url)),
          ],
        ),
      ),
    );
  }
}
