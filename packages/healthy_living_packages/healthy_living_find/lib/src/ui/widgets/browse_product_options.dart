import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_event.dart';
import 'package:healthy_living_find/src/ui/bloc/browse/browse_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class BrowseProductOptions extends StatelessWidget {
  final BrowseProductByCategoryParam browseProductByCategoryParam;
  final VoidCallback onTapCompare;

  const BrowseProductOptions({
    required this.browseProductByCategoryParam,
    required this.onTapCompare,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);

    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) {
        return current is RefreshUserLoginState;
      },
      builder: (context, state) {
        final appBloc = context.read<AppBloc>();
        return BlocConsumer<BrowseBloc, BrowseState>(
          listener: (builderContext, state) async {
            if (state is ProductOptionUpdated) {
              if (state.productOptionsItem !=
                  ProductSelectionOptionsItem.none) {
                router.pop();
              }
            }
          },
          listenWhen: (previous, current) {
            return current is ProductOptionUpdated;
          },
          buildWhen: (previous, current) {
            return current is ProductOptionUpdated;
          },
          builder: (builderContext, state) {
            final browseBloc = builderContext.read<BrowseBloc>();

            return ProductOptionsSheetView(
              onTap: (productOptions, productOptionItemWidgetContext) {
                if (productOptions == ProductSelectionOptionsItem.addToList) {
                  if (appBloc.isAuthenticated) {
                    browseBloc.add(
                      BrowseEvent.productOptionUpdate(
                        productOptionsItem:
                            ProductSelectionOptionsItem.addToList,
                        category: browseProductByCategoryParam.type,
                      ),
                    );
                  } else {
                    context.pop();
                    _seBrowseParamInAppBloc(
                      context: context,
                      params: browseProductByCategoryParam,
                    );
                    _navigateToSignInScreen(context: context);
                  }
                } else if (productOptions ==
                    ProductSelectionOptionsItem.compareProducts) {
                  if (appBloc.isAuthenticated && appBloc.isPremiumUser) {
                    browseBloc.add(
                      BrowseEvent.productOptionUpdate(
                        productOptionsItem:
                            ProductSelectionOptionsItem.compareProducts,
                        category: browseProductByCategoryParam.type,
                      ),
                    );
                  } else if (appBloc.isAuthenticated &&
                      !appBloc.isPremiumUser) {
                    PopoverUtil().showPopUp(
                      context: productOptionItemWidgetContext,
                      height: 160,
                      widget: UpgradeNowPopupWidget(
                        onTap: () {
                          context.pop();
                          context.pop(true);
                        },
                      ),
                    );
                  } else {
                    context.pop();
                    _seBrowseParamInAppBloc(
                      context: context,
                      params: browseProductByCategoryParam,
                    );
                    onTapCompare.call();
                  }
                }
              },
              onTapClose: () {
                browseBloc.add(
                  BrowseEvent.productOptionUpdate(
                    category: browseProductByCategoryParam.type,
                    productOptionsItem: ProductSelectionOptionsItem.none,
                  ),
                );
              },
              selectedProductOptionsItem: ProductSelectionOptionsItem.none,
              isAuthenticated: appBloc.isAuthenticated,
              isPremiumUser: appBloc.isAuthenticated && appBloc.isPremiumUser,
              searchQuery: "*",
            );
          },
        );
      },
    );
  }

  void _seBrowseParamInAppBloc({
    required BuildContext context,
    required BrowseProductByCategoryParam params,
  }) {
    final appBloc = context.read<AppBloc>();
    appBloc.add(
      AppEvent.navigationDataAfterAuthenticationSaved(
        navigationDataAfterAuthentication: NavigationDataAfterAuthentication(
          browseProductByCategoryParam: params,
        ),
      ),
    );
  }

  void _navigateToSignInScreen({required BuildContext context}) {
    final appBloc = context.read<AppBloc>();
    context
        .pushNamed(
          AppRoutes.authScreen.name,
          queryParameters: AuthScreenParams(isLogin: true).toQueryParameters(),
          extra: {
            StringConstants.openedFrom: AppRoutes.browseCategoryScreen.name,
          },
        )
        .then((_) {
          appBloc.add(
            AppEvent.navigationDataAfterAuthenticationSaved(
              navigationDataAfterAuthentication:
                  NavigationDataAfterAuthentication(
                    searchTerm: null,
                    searchTabType: null,
                  ),
            ),
          );
        });
  }
}
