import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_home/l10n/healthy_living_home_localizations.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_state.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_event.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_bloc.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_home/src/ui/widgets/horizontal_product_list_skeleton.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class JustVerifiedListWidget extends StatelessWidget {
  final VoidCallback? onListItemTap;
  const JustVerifiedListWidget({this.onListItemTap, super.key});

  @override
  Widget build(BuildContext context) {
    final homeLocalizations = HealthyLivingHomeLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    return BlocBuilder<JustVerifiedBloc, JustVerifiedState>(
      buildWhen: (previous, current) {
        return [
          JustVerifiedListLoadInProgress,
          JustVerifiedListLoadSuccess,
          JustVerifiedListLoadFailure,
        ].contains(current.runtimeType);
      },
      builder: (context, state) {
        if (state is JustVerifiedListLoadInProgress) {
          return HorizontalProductListSkeleton();
        } else if (state is JustVerifiedListLoadSuccess) {
          return HorizontalProductList(
            title: homeLocalizations.home_justVerified,
            headerType: ListTitleHorizontalHeaderType.withLinkType,
            items: state.justVerifiedList,
            onHeaderIconTap: () {
              context.pushNamed(AppRoutes.browseProductVerifiedScreen.name);
            },
            onListItemTap: (index) {
              onListItemTap?.call();
              context
                  .pushNamed(
                    AppRoutes.productDetail.name,
                    extra: ProductDetailParamModel(
                      productCategory: ProductCategory.personalCare,
                      productId: state.justVerifiedList[index].productId,
                    ),
                  )
                  .then((value) {
                    if (appBloc.isAuthenticated && context.mounted) {
                      context.read<RecentActivityBloc>().add(
                        RecentActivityEvent.recentActivityProductsFetched(),
                      );
                      context.read<YourListBloc>().add(
                        YourListEvent.yourListFetched(),
                      );
                    }
                  });
            },
          );
        } else if (state is JustVerifiedListLoadFailure) {
          // Todo will show the failure case widget
          return SizedBox.shrink();
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}
