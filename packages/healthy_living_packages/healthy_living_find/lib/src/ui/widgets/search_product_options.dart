import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_event.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchProductOptions extends StatelessWidget {
  final UniversalSearchBloc universalSearchBloc;
  final bool isPremiumUser;
  final bool isAuthenticated;
  final VoidCallback onTapCompare;

  const SearchProductOptions({
    required this.universalSearchBloc,
    required this.isPremiumUser,
    required this.isAuthenticated,
    required this.onTapCompare,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return BlocProvider.value(
      value: universalSearchBloc,
      child: BlocConsumer<UniversalSearchBloc, UniversalSearchState>(
        listener: (builderContext, state) async {
          if (state is ProductOptionUpdated) {
            if (state.productOptionsItem != ProductSelectionOptionsItem.none) {
              await Future.delayed(Duration(microseconds: 400));
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
          final searchBloc = builderContext.read<UniversalSearchBloc>();

          return ProductOptionsSheetView(
            isAuthenticated: isAuthenticated,
            isPremiumUser: isPremiumUser,
            onTap: (productOptions, productOptionItemWidgetContext) async {
              if (productOptions == ProductSelectionOptionsItem.addToList) {
                if (isAuthenticated) {
                  searchBloc.add(
                    UniversalSearchEvent.productOptionUpdate(
                      productOptionsItem: ProductSelectionOptionsItem.addToList,
                    ),
                  );
                } else {
                  context.pop();
                  _setSearchTermInAppBloc(
                    context: context,
                    searchQuery: searchBloc.searchQuery,
                  );
                  _navigateToSignInScreen(context: context);
                }
              } else if (productOptions ==
                  ProductSelectionOptionsItem.compareProducts) {
                if (isAuthenticated && isPremiumUser) {
                  searchBloc.add(
                    UniversalSearchEvent.productOptionUpdate(
                      productOptionsItem:
                          ProductSelectionOptionsItem.compareProducts,
                    ),
                  );
                } else if (isAuthenticated && !isPremiumUser) {
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
                  _setSearchTermInAppBloc(
                    context: context,
                    searchQuery: searchBloc.searchQuery,
                  );
                  context.pop();
                  onTapCompare.call();
                }
              }
            },
            onTapClose: () {
              searchBloc.add(
                UniversalSearchEvent.productOptionUpdate(
                  productOptionsItem: ProductSelectionOptionsItem.none,
                ),
              );
            },
            selectedProductOptionsItem: searchBloc.productOptionsItem,
            searchQuery: searchBloc.searchQuery,
          );
        },
      ),
    );
  }

  void _setSearchTermInAppBloc({
    required BuildContext context,
    required String searchQuery,
  }) {
    final appBloc = context.read<AppBloc>();
    appBloc.add(
      AppEvent.navigationDataAfterAuthenticationSaved(
        navigationDataAfterAuthentication: NavigationDataAfterAuthentication(
          searchTerm: searchQuery,
          searchTabType: SearchTabType.products,
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
          extra: {StringConstants.openedFrom: AppRoutes.find.name},
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
