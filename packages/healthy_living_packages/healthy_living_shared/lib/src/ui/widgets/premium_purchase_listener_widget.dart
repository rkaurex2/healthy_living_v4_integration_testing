import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/src/app_routes.dart';
import 'package:healthy_living_shared/src/ui/bloc/app_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/app_state.dart';
import 'package:healthy_living_shared/src/ui/bloc/premium_purchases/premium_purchases_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/premium_purchases/premium_purchases_state.dart';
import 'package:healthy_living_shared/src/ui/models/paywall/app_paywall_result.dart';
import 'package:healthy_living_shared/src/ui/models/paywall/paywall_source.dart';
import 'package:healthy_living_shared/src/utils/healthy_living_shared_utils.dart';

class PremiumPurchaseListenerWidget extends StatelessWidget {
  const PremiumPurchaseListenerWidget({
    required this.paywallSource,
    required this.child,
    super.key,
  });

  final Widget child;
  final PaywallSource paywallSource;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (_, current) => current is SubscribeToPremiumSuccess,
      builder: (context, state) {
        return BlocListener<PremiumPurchasesBloc, PremiumPurchasesState>(
          listenWhen: (_, current) {
            return current is PaywallLoadSuccess &&
                current.paywallSource == paywallSource;
          },
          listener: (context, state) {
            if (state is PaywallLoadSuccess &&
                (state.paywallResult == AppPaywallResult.purchased ||
                    state.paywallResult == AppPaywallResult.restored)) {
              context.pushNamed(AppRoutes.entitlementVerificationScreen.name).then((
                result,
              ) {
                if (!context.mounted) {
                  return;
                }

                HealthyLivingSharedUtils.entitlementVerificationScreenOnComplete(
                  context: context,
                  result: result,
                );
              });
            }
          },
          child: child,
        );
      },
    );
  }
}
