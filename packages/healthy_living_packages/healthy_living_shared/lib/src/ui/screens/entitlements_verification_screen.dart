import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/subscription_confirmation/subscription_confirmation_active_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/subscription_confirmation/subscription_confirmation_failed_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/subscription_confirmation/subscription_confirmation_loader.dart';

class EntitlementsVerificationScreen extends StatefulWidget {
  const EntitlementsVerificationScreen({super.key});

  @override
  State<EntitlementsVerificationScreen> createState() =>
      _EntitlementsVerificationScreenState();
}

class _EntitlementsVerificationScreenState
    extends State<EntitlementsVerificationScreen> {
  @override
  void initState() {
    super.initState();
    if (mounted) {
      final premiumPurchasesBloc = context.read<PremiumPurchasesBloc>();
      premiumPurchasesBloc.add(PremiumPurchasesEvent.entitlementsVerified());
    }
  }

  @override
  Widget build(BuildContext context) {
    final premiumPurchasesBloc = context.read<PremiumPurchasesBloc>();
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<PremiumPurchasesBloc, PremiumPurchasesState>(
            buildWhen: (_, current) {
              return [
                EntitlementsVerificationInProgress,
                EntitlementsVerificationSuccess,
                EntitlementsVerificationFailure,
              ].contains(current.runtimeType);
            },
            builder: (context, state) {
              if (state is EntitlementsVerificationInProgress) {
                return Center(child: SubscriptionConfirmationLoader());
              } else if (state is EntitlementsVerificationSuccess) {
                return SubscriptionConfirmationActiveWidget(
                  onSetPreferenceTap: () {
                    context.pop(
                      SubscriptionConfirmationResult(
                        isSuccess: true,
                        screenToOpen:
                            AppRoutes.ftUxAccountAboutIngredientPreference,
                      ),
                    );
                  },
                  onLaterTap: () {
                    context.pop(
                      SubscriptionConfirmationResult(isSuccess: true),
                    );
                  },
                );
              } else if (state is EntitlementsVerificationFailure) {
                return SubscriptionConfirmationFailedWidget(
                  onTryAgainTap: () {
                    premiumPurchasesBloc.add(
                      PremiumPurchasesEvent.entitlementsVerified(),
                    );
                  },
                  onContinueWithoutPremiumTap: () {
                    context.pop();
                  },
                );
              }
              return SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
