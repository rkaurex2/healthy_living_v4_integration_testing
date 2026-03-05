import 'package:healthy_living_shared/healthy_living_shared.dart';

class SubscriptionConfirmationResult {
  final bool isSuccess;
  final AppRoutes? screenToOpen;

  const SubscriptionConfirmationResult({
    this.screenToOpen,
    this.isSuccess = false,
  });
}
