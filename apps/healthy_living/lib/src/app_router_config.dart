import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living/src/ui/screens/dashboard_screen.dart';
import 'package:healthy_living_account/healthy_living_account.dart';
import 'package:healthy_living_auth/healthy_living_auth.dart';
import 'package:healthy_living_find/healthy_living_find.dart'
    show
        BrowseProductByCategoryScreen,
        BrowseProductCategoryScreen,
        BrowseProductVerifiedScreen,
        BrowseScreen,
        SearchScreen,
        SearchTabData;
import 'package:healthy_living_home/healthy_living_home.dart';
import 'package:healthy_living_my_items/healthy_living_my_items.dart';
import 'package:healthy_living_product_detail/healthy_living_product_detail.dart';
import 'package:healthy_living_scan/healthy_living_scan.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AppBloc,
        AppRoutes,
        AuthScreenParams,
        BrowseMainCategoryModel,
        BrowseProductByCategoryParam,
        BrowseProductByCategoryParams,
        BrowseProductByCategoryType,
        CompareProductItem,
        EntitlementsVerificationScreen,
        GuidesScreen,
        GuidesScreenParams,
        HealthyLivingSharedUtils,
        IngredientCategoryScreenParam,
        IngredientDetailScreenParams,
        IngredientScreenParam,
        IntegerConstants,
        LearnAboutPremiumScreen,
        MyItemScreenParam,
        MyListDetailScreen,
        NewsletterScreen,
        NewsletterScreenExtraParams,
        ProductCategory,
        ProductComparisonExtraParams,
        ProductDetailParamModel,
        ProductSelectionOptionsItem,
        ScanScreenParams,
        SearchScreenParams,
        SearchTabType,
        SearchType,
        StringConstants,
        SubmitProductInfoParams,
        SubscriptionEndedScreen,
        UserListScreenParams,
        WebviewScreenParams;

String lastKnownRoute = AppRoutes.splashScreen.path;
final rootNavigatorKey = GlobalKey<NavigatorState>();
late final GoRouter appRouter;

final RouterRefreshNotifier refreshNotifier = RouterRefreshNotifier();

class RouterRefreshNotifier extends ChangeNotifier {
  void refresh() => notifyListeners();
}

GoRouter getAppRouterConfig() {
  appRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    refreshListenable: refreshNotifier,
    initialLocation: AppRoutes.splashScreen.path,
    routes: <RouteBase>[
      GoRoute(
        path: AppRoutes.splashScreen.path,
        builder: (context, state) {
          return SplashScreen(
            onAnimationFinished: () async {
              final appBloc = context.read<AppBloc>();
              final isFtUxCompletedStatus =
                  await appBloc.getIsFtUxCompletedStatus();

              if (!context.mounted) return;

              context.go(
                isFtUxCompletedStatus
                    ? AppRoutes.home.path
                    : AppRoutes.letsGetStarted.path,
              );
            },
          );
        },
      ),
      GoRoute(
        name: AppRoutes.authScreen.name,
        path: AppRoutes.authScreen.path,
        builder: (context, state) {
          final authScreenParams = AuthScreenParams.fromQueryParameters(
            state.uri.queryParameters,
          );
          String? openedFrom;
          String? myListTapIndex;
          if (state.extra is Map<String, dynamic>) {
            final extra = state.extra as Map<String, dynamic>?;
            openedFrom = extra?[StringConstants.openedFrom] as String?;
            if (extra?[StringConstants.myListTapIndex] != null &&
                extra?[StringConstants.myListTapIndex] is String?) {
              myListTapIndex =
                  extra?[StringConstants.myListTapIndex] as String?;
            }
          }
          return AuthScreen(
            authScreenParams: authScreenParams,
            openedFrom: openedFrom ?? "",
            myListTapIndex:
                myListTapIndex != null
                    ? int.tryParse(myListTapIndex)
                    : IntegerConstants.myListTapListsIndex,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.signIn.path,
        name: AppRoutes.signIn.name,
        builder: (context, state) {
          String? openedFrom;
          bool? hideBackButton;
          String? myListTapIndex;

          if (state.extra is Map<String, dynamic>) {
            final extra = state.extra as Map<String, dynamic>?;
            openedFrom = extra?[StringConstants.openedFrom] as String? ?? "";
            hideBackButton =
                extra?[StringConstants.hideBackButton] as bool? ?? false;
            if (extra?[StringConstants.myListTapIndex] != null &&
                extra?[StringConstants.myListTapIndex] is String?) {
              myListTapIndex =
                  extra?[StringConstants.myListTapIndex] as String?;
            }
          }

          return SignInScreen(
            hideBackButton: hideBackButton ?? false,
            openedFrom: openedFrom ?? "",
            myListTapIndex:
                myListTapIndex != null
                    ? int.tryParse(myListTapIndex)
                    : IntegerConstants.myListTapListsIndex,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.signUp.path,
        builder: (context, state) {
          String? openedFrom;
          String? myListTapIndex;
          if (state.extra is Map<String, dynamic>) {
            final extra = state.extra as Map<String, dynamic>?;
            openedFrom = extra?[StringConstants.openedFrom] as String? ?? "";
            if (extra?[StringConstants.myListTapIndex] != null &&
                extra?[StringConstants.myListTapIndex] is String?) {
              myListTapIndex =
                  extra?[StringConstants.myListTapIndex] as String?;
            }
          }
          return CreateAccountScreen(
            openedFrom: openedFrom ?? "",
            myListTapIndex:
                myListTapIndex != null
                    ? int.tryParse(myListTapIndex)
                    : IntegerConstants.myListTapListsIndex,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.forgotPassword.path,
        builder: (context, state) {
          return ForgotPasswordScreens();
        },
      ),
      GoRoute(
        path: AppRoutes.letsGetStarted.path,
        builder: (context, state) {
          return LetsGetStartedScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.ftUxWalkThrough.path,
        builder: (context, state) {
          return FtUxWalkThroughScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.ftUxCreateAccount.path,
        builder: (context, state) {
          return FtUxCreateAccountScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.createNewPassword.path,
        name: AppRoutes.createNewPassword.name,
        builder: (context, state) {
          String? openedFrom;
          String? code;
          if (state.extra is Map<String, dynamic>) {
            final extra = state.extra as Map<String, dynamic>?;
            openedFrom = extra?[StringConstants.openedFrom] as String? ?? "";
            code = extra?[StringConstants.emailCode] as String? ?? "";
          }
          return CreateNewPasswordScreen(
            openedFrom: openedFrom ?? "",
            code: code ?? "",
          );
        },
      ),
      GoRoute(
        path: AppRoutes.checkYourEmail.path,
        name: AppRoutes.checkYourEmail.name,
        builder: (context, state) {
          final email =
              state.uri.queryParameters[StringConstants.emailExtraParamKey] ??
              '';
          return CheckYourEmailScreen(email: email);
        },
      ),
      GoRoute(
        path: AppRoutes.resetPasswordConfirm.path,
        name: AppRoutes.resetPasswordConfirm.name,
        builder: (context, state) {
          String openedFrom = "";
          final extra = state.extra;
          if (extra is Map<String, dynamic>) {
            openedFrom = extra[StringConstants.openedFrom] as String? ?? '';
          }
          return ResetPasswordConfirmationScreen(openedFrom: openedFrom);
        },
      ),
      GoRoute(
        path: AppRoutes.newsletter.path,
        name: AppRoutes.newsletter.name,
        builder: (context, state) {
          String email = '';
          String country = '';
          String openedFrom = '';
          String zipcode = '';
          bool isOpenFromSocialLogin = false;

          final extraParam = state.extra;
          if (extraParam is NewsletterScreenExtraParams) {
            email = extraParam.email;
            openedFrom = extraParam.openedFrom;
            zipcode = extraParam.zipcode;
            country =
                extraParam.country ??
                StringConstants.defaultSelectedCountryCode;
            isOpenFromSocialLogin = extraParam.isOpenFromSocialLogin;
          }
          return NewsletterScreen(
            email: email,
            openedFrom: openedFrom,
            country: country,
            zipcode: zipcode,
            isOpenFromSocialLogin: isOpenFromSocialLogin,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.webView.path,
        name: AppRoutes.webView.name,
        builder: (context, state) {
          final webViewScreenParams = WebviewScreenParams.fromQueryParameters(
            state.uri.queryParameters,
          );
          return GuidesWebViewScreen(
            ewgGuidesScreenParams: webViewScreenParams,
          );
        },
      ),
      GoRoute(
        path: AppRoutes.aboutEWG.path,
        name: AppRoutes.aboutEWG.name,
        builder: (context, state) {
          return AboutWidget();
        },
      ),
      GoRoute(
        path: AppRoutes.aboutScores.path,
        name: AppRoutes.aboutScores.name,
        builder: (context, state) {
          return AboutScoresWidget();
        },
      ),

      GoRoute(
        path: AppRoutes.scan.path,
        name: AppRoutes.scan.name,
        pageBuilder: (context, state) {
          CompareProductItem? defaultCompareProductItem;
          if (state.extra is ScanScreenParams) {
            final searchScreenParams = state.extra as ScanScreenParams;
            defaultCompareProductItem =
                searchScreenParams.defaultCompareProductItem;
          }

          return CustomTransitionPage(
            key: state.pageKey,
            child: ProductScanScreen(
              defaultCompareProductItem: defaultCompareProductItem,
            ),
            fullscreenDialog: true,
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              final curved = CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
                reverseCurve: Curves.easeInCubic,
              );

              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(curved),
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(0, 1),
                  ).animate(secondaryAnimation),
                  child: FadeTransition(opacity: curved, child: child),
                ),
              );
            },
          );
        },
      ),
      ShellRoute(
        builder: (context, state, child) {
          // Return the widget that implements the custom shell (e.g a BottomNavigationBar).
          // The child widget is the current page being displayed.
          return DashboardScreen(child: child);
        },
        routes: [
          // Home section routes
          GoRoute(
            name: AppRoutes.home.name,
            path: AppRoutes.home.path,
            builder: (context, state) {
              final isLoggedIn = context.watch<AppBloc>().isAuthenticated;
              return HomeScreen(key: ValueKey(isLoggedIn)); // Forces rebuild
            },
            routes: [
              GoRoute(
                name: AppRoutes.homeMyListDetail.name,
                path: AppRoutes.homeMyListDetail.path,
                builder: (context, state) {
                  String listId = '';
                  final extraParam = state.extra;
                  if (extraParam is UserListScreenParams) {
                    listId = extraParam.listId;
                  }
                  return MyListDetailScreen(listId: listId);
                },
              ),

              GoRoute(
                path: AppRoutes.ewgGuides.path,
                name: AppRoutes.ewgGuides.name,
                builder: (context, state) {
                  GuidesScreenParams guidesParams = GuidesScreenParams(
                    title: '',
                    items: [],
                  );
                  final extraParam = state.extra;
                  if (extraParam is GuidesScreenParams) {
                    guidesParams = extraParam;
                  }
                  return GuidesScreen(guidesScreenParam: guidesParams);
                },
              ),
              GoRoute(
                path: AppRoutes.ewgGuidesWebview.path,
                name: AppRoutes.ewgGuidesWebview.name,
                builder: (context, state) {
                  final webViewScreenParams =
                      WebviewScreenParams.fromQueryParameters(
                        state.uri.queryParameters,
                      );
                  return GuidesWebViewScreen(
                    ewgGuidesScreenParams: webViewScreenParams,
                  );
                },
              ),
              GoRoute(
                path: AppRoutes.productDetail.path,
                name: AppRoutes.productDetail.name,
                builder: (context, state) {
                  final product = state.extra as ProductDetailParamModel;
                  return ProductDetailScreen(product: product);
                },
                routes: [
                  GoRoute(
                    path: AppRoutes.ingredientDetails.path,
                    name: AppRoutes.ingredientDetails.name,
                    builder: (context, state) {
                      final queryParams =
                          IngredientDetailScreenParams.fromQueryParameters(
                            state.uri.queryParameters,
                          );
                      return IngredientDetailsScreen(
                        ingredientId: queryParams.ingredientId,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                name: AppRoutes.topFindingDetail.name,
                path: AppRoutes.topFindingDetail.path,
                builder: (context, state) {
                  final extraParam = state.extra;
                  final topFindingDetailParamModel =
                      extraParam as TopFindingDetailParamModel;
                  return TopFindingDetails(
                    topFindingDetailParamModel: topFindingDetailParamModel,
                  );
                },
              ),
            ],
          ),
          // Find section routes
          GoRoute(
            path: AppRoutes.browse.path,
            name: AppRoutes.browse.name,
            builder: (context, state) => BrowseScreen(),
            routes: [
              GoRoute(
                path: AppRoutes.find.path,
                name: AppRoutes.find.name,
                builder: (context, state) {
                  bool shouldDisplayTabBar = true;
                  bool productListSelectionActivate = false;
                  SearchTabData? initialSelectedTabData;
                  ProductSelectionOptionsItem? productSelectionOptionsItem;
                  String? textInputHintText;
                  String? listNameAddToList;
                  SearchType? searchType;
                  bool? isEWGVerified;
                  CompareProductItem? defaultCompareProductItem;
                  String? initialSearchQuery;
                  int? brandId;
                  bool? isFromProductDetail;
                  if (state.extra is SearchScreenParams) {
                    final searchScreenParams =
                        state.extra as SearchScreenParams;
                    shouldDisplayTabBar =
                        searchScreenParams.shouldDisplayTabBar;
                    productListSelectionActivate =
                        searchScreenParams.productListSelectionActivate;
                    productSelectionOptionsItem =
                        searchScreenParams.productSelectionOptionsItem;
                    listNameAddToList = searchScreenParams.listNameAddToList;
                    initialSelectedTabData = SearchTabData(
                      index: 1,
                      name: '',
                      type: SearchTabType.products,
                    );
                    textInputHintText = searchScreenParams.textInputHintText;
                    searchType = searchScreenParams.searchType;
                    isEWGVerified = searchScreenParams.isEWGVerified;
                    defaultCompareProductItem =
                        searchScreenParams.defaultCompareProductItem;
                    initialSearchQuery = searchScreenParams.initialSearchQuery;
                    brandId = searchScreenParams.brandId;
                    isFromProductDetail =
                        searchScreenParams.isFromProductDetail;
                  }

                  return SearchScreen(
                    initialSelectedTabData: initialSelectedTabData,
                    shouldDisplayTabBar: shouldDisplayTabBar,
                    textInputHintText: textInputHintText,
                    productListSelectionActivate: productListSelectionActivate,
                    productSelectionOptionsItem: productSelectionOptionsItem,
                    listNameAddToList: listNameAddToList,
                    searchType: searchType,
                    isEWGVerified: isEWGVerified,
                    compareProductItem: defaultCompareProductItem,
                    initialSearchQuery: initialSearchQuery,
                    brandId: brandId,
                    isFromProductDetail: isFromProductDetail ?? false,
                  );
                },
                routes: [
                  GoRoute(
                    path: AppRoutes.findProductDetail.path,
                    name: AppRoutes.findProductDetail.name,
                    builder: (context, state) {
                      final product = state.extra as ProductDetailParamModel;
                      return ProductDetailScreen(product: product);
                    },
                    routes: [
                      GoRoute(
                        path: AppRoutes.searchIngredientDetails.path,
                        name: AppRoutes.searchIngredientDetails.name,
                        builder: (context, state) {
                          final queryParams =
                              IngredientDetailScreenParams.fromQueryParameters(
                                state.uri.queryParameters,
                              );
                          return IngredientDetailsScreen(
                            ingredientId: queryParams.ingredientId,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: AppRoutes.browseProductByCategory.path,
                name: AppRoutes.browseProductByCategory.name,
                builder: (context, state) {
                  BrowseProductByCategoryParams params =
                      BrowseProductByCategoryParams(
                        type: BrowseProductByCategoryType.food,
                        categories: [],
                      );
                  if (state.extra is BrowseProductByCategoryParams) {
                    params = state.extra as BrowseProductByCategoryParams;
                  }
                  return BrowseProductByCategoryScreen(params: params);
                },
              ),
              GoRoute(
                path: AppRoutes.browseCategoryScreen.path,
                name: AppRoutes.browseCategoryScreen.name,
                builder: (context, state) {
                  BrowseProductByCategoryParam type =
                      BrowseProductByCategoryParam(
                        type: BrowseProductByCategoryType.food,
                        categoryGroupTitle: '',
                        categoryGroupId: null,
                        categoryName: '',
                        isEWGVerified: false,
                        categoryId: null,
                      );

                  if (state.extra is BrowseProductByCategoryParam) {
                    type = state.extra as BrowseProductByCategoryParam;
                  }
                  return BrowseProductCategoryScreen(param: type);
                },
              ),
              GoRoute(
                path: AppRoutes.browseProductVerifiedScreen.path,
                name: AppRoutes.browseProductVerifiedScreen.name,
                builder: (context, state) {
                  return BrowseProductVerifiedScreen();
                },
              ),
              GoRoute(
                path: AppRoutes.productComparisonScreen.path,
                name: AppRoutes.productComparisonScreen.name,
                builder: (context, state) {
                  final extraParam = state.extra;
                  ProductComparisonExtraParams productParam =
                      ProductComparisonExtraParams(
                        productIds: [],
                        productCategory: ProductCategory.food,
                      );
                  if (extraParam is ProductComparisonExtraParams) {
                    productParam = extraParam;
                  }
                  return ProductComparisonScreen(
                    productComparisonExtraParams: productParam,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: AppRoutes.nutritionFacts.path,
            name: AppRoutes.nutritionFacts.name,
            builder: (context, state) {
              final extra = state.extra;
              late NutrientFactUIModel nutrientFactUIModel =
                  NutrientFactUIModel(
                    productSize: '',
                    addedSugarIngredients: '',
                    foodServingInfo: null,
                    foodCaloriesModel: null,
                    avoidFactsList: [],
                    quickFactsList: [],
                    nutrientsList: [],
                    ratingDetailModel: null,
                    productName: '',
                  );
              if (extra is NutrientFactUIModel) {
                nutrientFactUIModel = extra;
              }
              return NutritionFactsScreen(
                nutrientFactUIModel: nutrientFactUIModel,
              );
            },
          ),
          // My Items section routes
          GoRoute(
            path: AppRoutes.myItems.path,
            name: AppRoutes.myItems.name,
            builder: (context, state) {
              bool shouldDisplayTabBar = true;
              bool productListSelectionActivate = false;
              SearchTabData? initialSelectedTabData;
              String? searchHintText;
              String? listNameAddToList;
              CompareProductItem? defaultCompareProductItem;
              ProductSelectionOptionsItem? productSelectionOptionsItem;
              if (state.extra is MyItemScreenParam) {
                final myItemsScreenParam = state.extra as MyItemScreenParam;
                return MyItemsScreen(index: myItemsScreenParam.tabIndex);
              } else if (state.extra is SearchScreenParams) {
                final searchScreenParams = state.extra as SearchScreenParams;
                shouldDisplayTabBar = searchScreenParams.shouldDisplayTabBar;
                searchHintText = searchScreenParams.textInputHintText;
                productListSelectionActivate =
                    searchScreenParams.productListSelectionActivate;
                productSelectionOptionsItem =
                    searchScreenParams.productSelectionOptionsItem;
                initialSelectedTabData = SearchTabData(
                  index: 1,
                  name: '',
                  type: SearchTabType.products,
                );
                listNameAddToList = searchScreenParams.listNameAddToList;
                defaultCompareProductItem =
                    searchScreenParams.defaultCompareProductItem;
                return SearchScreen(
                  initialSelectedTabData: initialSelectedTabData,
                  shouldDisplayTabBar: shouldDisplayTabBar,
                  textInputHintText: searchHintText,
                  productListSelectionActivate: productListSelectionActivate,
                  productSelectionOptionsItem: productSelectionOptionsItem,
                  listNameAddToList: listNameAddToList,
                  compareProductItem: defaultCompareProductItem,
                );
              } else {
                return MyItemsScreen(index: 0);
              }
            },
            routes: [
              GoRoute(
                name: AppRoutes.myItemMyListDetail.name,
                path: AppRoutes.myItemMyListDetail.path,
                builder: (context, state) {
                  String? openedFrom;
                  String listId = '';
                  final extraParam = state.extra;
                  if (extraParam is UserListScreenParams) {
                    listId = extraParam.listId;
                    openedFrom = extraParam.openedFrom ?? "";
                  }
                  return MyListDetailScreen(
                    listId: listId,
                    openedFrom: openedFrom,
                  );
                },
              ),
              GoRoute(
                name: AppRoutes.myItemsProductDetail.name,
                path: AppRoutes.myItemsProductDetail.path,
                builder: (context, state) {
                  final product = state.extra as ProductDetailParamModel;
                  return ProductDetailScreen(product: product);
                },
                routes: [
                  GoRoute(
                    path: AppRoutes.myItemsIngredientDetails.path,
                    name: AppRoutes.myItemsIngredientDetails.name,
                    builder: (context, state) {
                      final queryParams =
                          IngredientDetailScreenParams.fromQueryParameters(
                            state.uri.queryParameters,
                          );
                      return IngredientDetailsScreen(
                        ingredientId: queryParams.ingredientId,
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: AppRoutes.instantHazardScoreHistoryScreen.path,
                name: AppRoutes.instantHazardScoreHistoryScreen.name,
                builder: (context, state) {
                  SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
                    productCategoryType: ProductCategory.food,
                    groupCategoryModel: BrowseMainCategoryModel(),
                    productName: '',
                    brandName: '',
                    ingredients: '',
                    imageIds: [],
                  );
                  final extraParam = state.extra;

                  if (extraParam is SubmitProductInfoParams) {
                    infoUIModel = extraParam;
                  }
                  return InstantHazardScoreHistoryScreen(
                    infoUIModel: infoUIModel,
                  );
                },
              ),
            ],
          ),
          // Account section routes
          GoRoute(
            name: AppRoutes.account.name,
            path: AppRoutes.account.path,
            builder: (context, state) => MyAccountScreen(),
            routes: [
              GoRoute(
                name: AppRoutes.myAccountDetail.name,
                path: AppRoutes.myAccountDetail.path,
                builder: (context, state) => MyAccountDetailScreen(),
              ),
              GoRoute(
                name: AppRoutes.ftUxAccountAboutIngredientPreference.name,
                path: AppRoutes.ftUxAccountAboutIngredientPreference.path,
                builder:
                    (context, state) => FtUxAboutIngredientPreferenceScreen(),
              ),
              GoRoute(
                name: AppRoutes.ftUxAccountGetStartedIngredientPreference.name,
                path: AppRoutes.ftUxAccountGetStartedIngredientPreference.path,
                builder:
                    (context, state) =>
                        FtUxGetStartedIngredientPreferenceScreen(),
              ),
              GoRoute(
                name: AppRoutes.accountIngredientPreferenceCategory.name,
                path: AppRoutes.accountIngredientPreferenceCategory.path,
                builder: (context, state) {
                  IngredientCategoryScreenParam? ingredient;
                  if (state.extra is IngredientCategoryScreenParam) {
                    ingredient = state.extra as IngredientCategoryScreenParam;
                  }
                  return IngredientPreferenceCategoryScreen(
                    ingredientCategoryScreenParam: ingredient,
                  );
                },
              ),
              GoRoute(
                name: AppRoutes.accountIngredientPreferenceList.name,
                path: AppRoutes.accountIngredientPreferenceList.path,
                builder: (context, state) {
                  final ingredient = state.extra as IngredientScreenParam;
                  return IngredientPreferenceListScreen(
                    ingredientScreenParam: ingredient,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        name: AppRoutes.entitlementVerificationScreen.name,
        path: AppRoutes.entitlementVerificationScreen.path,
        builder: (context, state) => EntitlementsVerificationScreen(),
      ),
      GoRoute(
        name: AppRoutes.subscriptionDetailScreen.name,
        path: AppRoutes.subscriptionDetailScreen.path,
        builder: (context, state) {
          return SubscriptionDetailsScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.submitProductScreen.path,
        name: AppRoutes.submitProductScreen.name,
        builder: (context, state) {
          String upcCode = '';
          if (state.extra is String) {
            upcCode = state.extra as String;
          }
          return SubmitProductScreen(upcCode: upcCode);
        },
      ),
      GoRoute(
        path: AppRoutes.selectProductTypeScreen.path,
        name: AppRoutes.selectProductTypeScreen.name,
        builder: (context, state) {
          String upcCode = '';
          if (state.extra is String) {
            upcCode = state.extra as String;
          }
          return SelectProductTypeScreen(upcCode: upcCode);
        },
      ),
      GoRoute(
        path: AppRoutes.submitProductTypeIntroScreen.path,
        name: AppRoutes.submitProductTypeIntroScreen.name,
        builder: (context, state) {
          SubmitProductTypeIntroUIModel introUIModel =
              SubmitProductTypeIntroUIModel(
                productTitle: '',
                titleImage: '',
                checkList: [],
                productCategoryType: ProductCategory.food,
              );
          final extraParam = state.extra;

          if (extraParam is SubmitProductTypeIntroUIModel) {
            introUIModel = extraParam;
          }
          return SubmitProductTypeIntroScreen(introUIModel: introUIModel);
        },
      ),

      GoRoute(
        path: AppRoutes.submitProductInfo.path,
        name: AppRoutes.submitProductInfo.name,
        builder: (context, state) {
          SubmitProductInfoParams introUIModel = SubmitProductInfoParams(
            productName: "",
            productCategoryType: ProductCategory.food,
            brandName: '',
            ingredients: '',
            groupCategoryModel: null,
            imageIds: [],
          );
          final extraParam = state.extra;

          if (extraParam is SubmitProductInfoParams) {
            introUIModel = extraParam;
          }
          return SubmitProductInfoScreen(infoUIModel: introUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.submitProductCategorySelectionScreen.path,
        name: AppRoutes.submitProductCategorySelectionScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            productName: '',
            brandName: '',
            ingredients: '',
            photosByRole: {},
            imageIds: [],
          );
          final extraParam = state.extra;

          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return SubmitProductCategorySelectionScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.pcpSubCategorySelectionScreen.path,
        name: AppRoutes.pcpSubCategorySelectionScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            photosByRole: {},
            imageIds: [],
          );
          final extraParam = state.extra;
          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return SubCategorySelectionScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.sunscreenDetailInfoScreen.path,
        name: AppRoutes.sunscreenDetailInfoScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUiModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            photosByRole: {},
            imageIds: [],
          );
          final extraParam = state.extra;
          if (extraParam is SubmitProductInfoParams) {
            infoUiModel = extraParam;
          }
          return SunscreenDetailInfoScreen(infoUIModel: infoUiModel);
        },
      ),

      GoRoute(
        path: AppRoutes.submitProductFormScreen.path,
        name: AppRoutes.submitProductFormScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            imageIds: [],
          );
          final extraParam = state.extra;
          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return SubmitProductFormScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.submitProductsAdditionalInfoScreen.path,
        name: AppRoutes.submitProductsAdditionalInfoScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            imageIds: [],
          );
          final extraParam = state.extra;
          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return SubmitProductsAdditionalInfoScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.reviewSubmissionScreen.path,
        name: AppRoutes.reviewSubmissionScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            imageIds: [],
          );
          final extraParam = state.extra;
          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return ReviewSubmissionScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.submissionConfirmationScreen.path,
        name: AppRoutes.submissionConfirmationScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            imageIds: [],
          );
          final extraParam = state.extra;

          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return SubmissionConfirmationScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.productSubmitCameraScreen.path,
        name: AppRoutes.productSubmitCameraScreen.name,
        builder: (context, state) {
          SubmitProductTypeIntroUIModel introUIModel =
              SubmitProductTypeIntroUIModel(
                productTitle: '',
                titleImage: '',
                checkList: [],
                productCategoryType: ProductCategory.food,
                categories: [],
              );
          CameraUIModel cameraUIModel = CameraUIModel(
            cameras: [],
            introUIModel: introUIModel,
          );
          final extraParam = state.extra;
          if (extraParam is CameraUIModel) {
            cameraUIModel = extraParam;
          }
          return ProductSubmitCameraScreen(cameras: cameraUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.instantScoreProcessingScreen.path,
        name: AppRoutes.instantScoreProcessingScreen.name,
        builder: (context, state) {
          String message = "";
          final extraParam = state.extra;
          if (extraParam is String) {
            message = extraParam;
          }
          return InstantScoreProcessingScreen(message: message);
        },
      ),
      GoRoute(
        path: AppRoutes.instantHazardScoreScreen.path,
        name: AppRoutes.instantHazardScoreScreen.name,
        builder: (context, state) {
          SubmitProductInfoParams infoUIModel = SubmitProductInfoParams(
            productCategoryType: ProductCategory.food,
            groupCategoryModel: BrowseMainCategoryModel(),
            productName: '',
            brandName: '',
            ingredients: '',
            imageIds: [],
          );
          final extraParam = state.extra;

          if (extraParam is SubmitProductInfoParams) {
            infoUIModel = extraParam;
          }
          return InstantHazardScoreScreen(infoUIModel: infoUIModel);
        },
      ),
      GoRoute(
        path: AppRoutes.instantScoreIngredientDetails.path,
        name: AppRoutes.instantScoreIngredientDetails.name,
        builder: (context, state) {
          final queryParams = IngredientDetailScreenParams.fromQueryParameters(
            state.uri.queryParameters,
          );
          return IngredientDetailsScreen(
            ingredientId: queryParams.ingredientId,
          );
        },
      ),
      GoRoute(
        name: AppRoutes.learnAboutPremium.name,
        path: AppRoutes.learnAboutPremium.path,
        pageBuilder: (_, state) {
          String openFrom = "";
          if (state.extra is String) {
            openFrom = state.extra as String;
          }
          return CustomTransitionPage(
            key: state.pageKey,
            child: LearnAboutPremiumScreen(openFrom: openFrom),
            fullscreenDialog: true,
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              final curved = CurvedAnimation(
                parent: animation,
                curve: Curves.easeOutCubic,
                reverseCurve: Curves.easeInCubic,
              );

              return SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(curved),
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: Offset.zero,
                    end: const Offset(0, 1),
                  ).animate(secondaryAnimation),
                  child: FadeTransition(opacity: curved, child: child),
                ),
              );
            },
          );
        },
      ),
      GoRoute(
        path: AppRoutes.subscriptionEndedScreen.path,
        name: AppRoutes.subscriptionEndedScreen.name,
        builder: (context, state) {
          return SubscriptionEndedScreen();
        },
      ),
    ],
    redirect: (context, state) async {
      final uri = state.uri.toString();

      if (HealthyLivingSharedUtils.isExternalLink(uri) || uri.contains('_branch_referrer')) {
        if (HealthyLivingSharedUtils.isSensitiveRoute(lastKnownRoute)) {
          final appBloc = context.read<AppBloc>();
          final isFtUxCompletedStatus =
              await appBloc.getIsFtUxCompletedStatus();

          return isFtUxCompletedStatus
              ? AppRoutes.home.path
              : AppRoutes.letsGetStarted.path;
        }
        return HealthyLivingSharedUtils.extractFirstPath(lastKnownRoute);
      }

      return null;
    },
    errorBuilder: (context, state) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final appBloc = context.read<AppBloc>();

        appBloc.getIsFtUxCompletedStatus().then((isDone) {
          appRouter.go(
            isDone ? AppRoutes.home.path : AppRoutes.letsGetStarted.path,
          );
        });
      });

      return const SizedBox.shrink();
    },
  );
  return appRouter;
}
