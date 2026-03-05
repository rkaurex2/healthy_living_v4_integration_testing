import 'dart:io';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:network/network.dart';
import 'package:purchases_ui_flutter/paywall_result.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HealthyLivingSharedUtils {
  const HealthyLivingSharedUtils._();

  static ExceptionMessage getErrorInfo({
    required HealthyLivingSharedLocalizations localizations,
    required Exception? exception,
  }) {
    String title = localizations.general_errorMessage_somethingWentWrong;

    if (exception != null) {
      if (exception is NetworkConnectionException) {
        title = localizations.general_networkErrorTitle;
      } else if (exception is NetworkClientSideException) {
        if (exception.responseBody != null) {
          final map = exception.responseBody as Map<String, dynamic>;
          for (final entry in map.entries) {
            final value = entry.value;
            if (value is List) {
              title = value[0];
            }
          }
        } else {
          title = localizations.general_failedToLoad;
        }
      } else if (exception is NetworkServerSideException) {
        title = localizations.general_serverErrorTitle;
      } else if (exception is UnknownNetworkException) {
        title = localizations.general_unknownErrorTitle;
      }
    }

    return ExceptionMessage(title: title, message: "");
  }

  static String getServerErrorMessage({
    required HealthyLivingSharedLocalizations localizations,
    required Exception? exception,
  }) {
    if (exception is NetworkException && exception.errorMessage != null) {
      return exception.errorMessage ??
          localizations.general_errorMessage_somethingWentWrong;
    }

    final errorInfo = getErrorInfo(
      localizations: localizations,
      exception: exception,
    );

    return errorInfo.title;
  }

  static LocalizationsDelegate<CountryLocalizations>
  getCountryCodeLocalizationDelegate() {
    return CountryLocalizations.getDelegate(enableLocalization: false);
  }

  static void urlLaunch({
    required HealthyLivingSharedLocalizations localizations,
    required String url,
    required Function(String) errorCallback,
  }) async {
    try {
      if (url.isValidValue) {
        final uri = Uri.parse(url);
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        errorCallback(localizations.general_urlLaunch_urlIsNotValid);
      }
    } catch (exception) {
      errorCallback(localizations.general_urlLaunch_urlIsNotSupported);
    }
  }

  static String getListProductsItemCount({
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalizations,
    required int itemCount,
  }) {
    if (itemCount == 1) {
      return "${itemCount.toString()} ${healthyLivingSharedLocalizations.general_product}";
    } else {
      return "${itemCount.toString()} ${healthyLivingSharedLocalizations.general_products}";
    }
  }

  static List<String> getSortMyListProducts({
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalizations,
  }) {
    return [
      healthyLivingSharedLocalizations.general_listSort_alphaAZ,
      healthyLivingSharedLocalizations.general_listSort_alphaZA,
      healthyLivingSharedLocalizations.general_listSort_mostRecent,
    ];
  }

  static String formatCountSimple(String count) {
    final cleaned = count.replaceAll(RegExp(r'[^0-9\.-]'), '');
    if (cleaned.isEmpty) return count;

    final isNeg = cleaned.startsWith('-');
    final body = isNeg ? cleaned.substring(1) : cleaned;
    final parts = body.split('.');
    final ints = parts[0];

    final buf = StringBuffer();
    for (int i = 0; i < ints.length; i++) {
      final fromRight = ints.length - i;
      buf.write(ints[i]);
      if (fromRight > 1 && fromRight % 3 == 1) buf.write(',');
    }

    final fraction = parts.length > 1 ? '.${parts[1]}' : '';
    return '${isNeg ? '-' : ''}${buf.toString()}$fraction';
  }

  static bool isPdfDoc(String url) {
    final lower = url.toLowerCase();
    return lower.contains('.pdf') || lower.contains('%2fpdf');
  }

  static Future<void> shareApp({
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalizations,
    required dynamic sharePositionOrigin,
  }) async {
    try {
      String appUrl;
      if (Platform.isAndroid) {
        appUrl = UrlConstants.androidAppUrl;
      } else {
        appUrl = UrlConstants.iosAppUrl;
      }

      final uri = Uri.parse(appUrl);

      final shareParams = ShareParams(
        uri: uri,
        subject:
            healthyLivingSharedLocalizations
                .healthyLivingShared_appStore_appInfo,
        sharePositionOrigin: sharePositionOrigin,
      );
      await SharePlus.instance.share(shareParams);
    } catch (e, stackTrace) {
      debugPrint("Error while sharing app link: $e");
      debugPrint("$stackTrace");
    }
  }

  static Future<void> rateApp({
    required HealthyLivingSharedLocalizations healthyLivingSharedLocalizations,
  }) async {
    try {
      Uri? storeUri;

      if (Platform.isAndroid) {
        storeUri = await _getAndroidStoreUri();
      } else if (Platform.isIOS) {
        storeUri = await _getIOSStoreUri();
      }

      if (storeUri != null) {
        final bool launched = await launchUrl(
          storeUri,
          mode: LaunchMode.externalApplication,
        );

        if (!launched) {
          debugPrint(
            healthyLivingSharedLocalizations
                .healthyLivingShared_appStore_couldNotOpenAppStore,
          );
        }
      } else {
        debugPrint(
          healthyLivingSharedLocalizations
              .healthyLivingShared_appStore_ratingNotAvailable,
        );
      }
    } catch (e) {
      debugPrint('Rate app error: $e');
    }
  }

  static Future<Uri?> _getAndroidStoreUri() async {
    Uri storeUri = Uri.parse(
      '${StringConstants.storeUri}${StringConstants.androidAppId}',
    );
    if (await canLaunchUrl(storeUri)) {
      return storeUri;
    }

    // Fallback: Web URL
    return Uri.parse(
      '${StringConstants.storeWebUri}${StringConstants.androidAppId}',
    );
  }

  /// Get iOS store URI with fallback
  static Future<Uri?> _getIOSStoreUri() async {
    //todo will update url will original
    Uri storeUri = Uri.parse(
      'itms-apps://itunes.apple.com/app/id${StringConstants.iosAppStoreId}?action=write-review',
    );

    // Check if App Store app is available
    if (await canLaunchUrl(storeUri)) {
      return storeUri;
    }

    //todo will update url will original
    return Uri.parse(
      'https://apps.apple.com/app/id${StringConstants.iosAppStoreId}?action=write-review',
    );
  }

  static String? getCountryNameFromCode(String countryCode) {
    String countryName = StringConstants.defaultSelectedCountryName;
    if (countryCode.isValidValue) {
      CountryCode country = CountryCode.fromCountryCode(countryCode);
      countryName = country.name ?? countryName;
    }
    return countryName;
  }

  static (String? score, String? dtaAvailability) getProductCategoryScore({
    required ProductCategory? productCategory,
    required String? personalCareScore,
    required String? cleanerScore,
    required double? foodScore,
  }) {
    String? score;
    String? dataAvailability;
    if (productCategory == ProductCategory.personalCare) {
      /// Personal care products generally have following score format
      /// 1_Limited or 1
      final (scorePart, dataPart) = getScoreAndDataAvailability(
        personalCareScore,
      );
      score = scorePart;
      dataAvailability = dataPart;
    } else if (productCategory == ProductCategory.cleaner) {
      /// Cleaner products generally have following score format
      /// A
      score = cleanerScore;
    } else if (productCategory == ProductCategory.food) {
      /// Food products generally have following score format
      /// 1.4 (double)
      score = HealthyLivingSharedUtils.formatFoodScore(foodScore);
    }

    return (score, dataAvailability);
  }

  static (String? score, String? dataAvailability) getScoreAndDataAvailability(
    String? score,
  ) {
    String? formattedScore;
    String? dataAvailability;

    if (score?.contains(StringConstants.personalCareProductScoreSeparator) ==
        true) {
      final scorePart =
          score
              ?.split(StringConstants.personalCareProductScoreSeparator)[0]
              .trim();
      final dataPart =
          score
              ?.split(StringConstants.personalCareProductScoreSeparator)[1]
              .trim();
      formattedScore = scorePart;
      dataAvailability = dataPart;
    } else {
      formattedScore = score;
    }

    return (formattedScore, dataAvailability);
  }

  static void setStatusBarBrightLight() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        /// Only honored in Android version M and greater.
        statusBarIconBrightness: Brightness.light,

        /// Only honored in iOS.
        statusBarBrightness: Brightness.dark,
      ),
    );
  }

  static void setStatusBarBrightDark() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        /// Only honored in Android version M and greater.
        statusBarIconBrightness: Brightness.dark,

        /// Only honored in iOS.
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  static final List<String> _lightStatusBarIconsRoutePaths = [
    AppRoutes.splashScreen.path,
    AppRoutes.letsGetStarted.path,
    AppRoutes.home.path,
    "${AppRoutes.browse.path}${AppRoutes.browseProductVerifiedScreen.path}",
  ];

  static bool shouldSetStatusBarIconsToLight(String location) {
    bool result = false;
    for (int i = 0; i < _lightStatusBarIconsRoutePaths.length; i++) {
      if (_lightStatusBarIconsRoutePaths[i] == location) {
        result = true;
        break;
      }
    }
    return result;
  }

  static void handleStatusBarBrightness(String location) {
    if (shouldSetStatusBarIconsToLight(location)) {
      setStatusBarBrightLight();
    } else {
      setStatusBarBrightDark();
    }
  }

  static bool isAllProductSelected(List<UserListItemsModel>? list) {
    return (list ?? []).every(
      (element) => element.productSelectionType == ProductSelectionType.add,
    );
  }

  static String formatFoodScore(double? score) {
    if (score == null) return '';

    if (score >= 10.0) {
      return score.toStringAsFixed(0);
    }
    return score.toString();
  }

  static String formatFoodScoreDecimal(double? score) {
    if (score == null) return '';
    if (score % 1 == 0) {
      return score.toStringAsFixed(0);
    }
    return score.toString();
  }

  static String extractFirstPath(String location) {
    final match = RegExp(r"^/[^/]+").firstMatch(location);
    return match?.group(0) ?? location;
  }

  static bool matchesRoute(AppRoutes route, String lastKnownRoute) {
    return HealthyLivingSharedUtils.extractLastPath(lastKnownRoute) ==
        route.path.replaceFirst('/', '');
  }

  static bool isSensitiveRoute(String lastRoute) {
    final routes = [AppRoutes.createNewPassword, AppRoutes.scan];

    return routes.any((route) => matchesRoute(route, lastRoute));
  }

  static String extractLastPath(String location) {
    if (location.isEmpty) return location;

    final uri = Uri.parse(location);
    if (uri.pathSegments.isEmpty) return location;

    return uri.pathSegments.last;
  }

  static bool isExternalLink(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    return uri.scheme.isNotEmpty;
  }

  static AppRoutes? resolveRoute(String location) {
    for (final route in AppRoutes.values) {
      if (matchesRoute(route, location)) {
        return route;
      }
    }
    return null;
  }

  static String resolveScreenName(String location) {
    final route = resolveRoute(location);
    return route?.eventName ?? 'UnknownScreen';
  }

  static final List<String> _entitlementIdList = [
    StringConstants.premiumEntitlementId.toLowerCase(),
  ];

  static bool checkForPremiumUser({
    required AuthRevenueCatResponseModel? revenueCatData,
    required List<EntitlementsResponseModel>? entitlements,
  }) {
    final hasRevenueCatUserId = revenueCatData?.appUserId.isValidValue == true;

    bool hasAnyEntitlementActive = false;
    final matchedEntitlementId = entitlements?.indexWhere(
      (entitlement) =>
          _entitlementIdList.contains(entitlement.entitlementId.toLowerCase()),
    );
    if (matchedEntitlementId != null &&
        matchedEntitlementId > -1 &&
        entitlements?[matchedEntitlementId].active == true) {
      hasAnyEntitlementActive = true;
    }

    return hasRevenueCatUserId && hasAnyEntitlementActive;
  }

  static IngredientPreference? getProductIngredientPreference({
    IngredientPreferenceIndicatorModel? ingredientPreferenceIndicator,
    bool isPremiumUser = false,
  }) {
    if (ingredientPreferenceIndicator == null || !isPremiumUser) return null;

    if ((ingredientPreferenceIndicator.hasAvoid &&
            !ingredientPreferenceIndicator.hasPrefer) ||
        (ingredientPreferenceIndicator.hasAvoid &&
            ingredientPreferenceIndicator.hasPrefer)) {
      return IngredientPreference.avoid;
    } else if (ingredientPreferenceIndicator.hasPrefer &&
        !ingredientPreferenceIndicator.hasAvoid) {
      return IngredientPreference.prefer;
    }

    return null;
  }

  static AppPaywallResult getAppPaywallResult(PaywallResult paywallResult) {
    switch (paywallResult) {
      case PaywallResult.notPresented:
        return AppPaywallResult.notPresented;
      case PaywallResult.cancelled:
        return AppPaywallResult.cancelled;
      case PaywallResult.error:
        return AppPaywallResult.error;
      case PaywallResult.purchased:
        return AppPaywallResult.purchased;
      case PaywallResult.restored:
        return AppPaywallResult.restored;
    }
  }

  static String getAddToListText({
    required bool isValidValue,
    required String? listName,
    required int selectItemCount,
    required HealthyLivingSharedLocalizations localization,
  }) {
    final countText = selectItemCount > 0 ? " ($selectItemCount)" : "";

    if (isValidValue) {
      return "${localization.general_addToListName(listName ?? "")}$countText";
    } else {
      return "${localization.general_addToList}$countText";
    }
  }

  static String removeHtmlTags(String text) {
    if (!text.isValidValue) {
      return "";
    }
    return text.replaceAll(RegExp(r'<[^>]*>'), '').trim();
  }

  static void authNavigationHandler({
    required BuildContext context,
    required String openedFrom,
    int myListTapIndex = 0,
  }) {
    final appBloc = context.read<AppBloc>();
    final navigationData = appBloc.navigationDataAfterAuthentication;
    final shouldOpenPaywall = navigationData?.openPaywallAfterAuth == true;

    if (openedFrom == StringConstants.myItems) {
      context.go(
        AppRoutes.myItems.path,
        extra: MyItemScreenParam(tabIndex: myListTapIndex),
      );
    } else if (openedFrom == StringConstants.home) {
      context.go(AppRoutes.home.path);
    } else if (openedFrom == StringConstants.accounts) {
      context.go(AppRoutes.account.path);
    } else if (openedFrom == AppRoutes.find.name &&
        appBloc.navigationDataAfterAuthentication?.searchTerm?.isValidValue ==
            true &&
        appBloc.navigationDataAfterAuthentication?.searchTabType != null) {
      context.goNamed(
        AppRoutes.find.name,
        extra: SearchScreenParams(
          initialSearchQuery:
              appBloc.navigationDataAfterAuthentication?.searchTerm,
          initialSelectedTabType:
              appBloc.navigationDataAfterAuthentication?.searchTabType,
        ),
      );
      appBloc.add(
        AppEvent.navigationDataAfterAuthenticationSaved(
          navigationDataAfterAuthentication: NavigationDataAfterAuthentication(
            searchTerm: null,
            searchTabType: null,
          ),
          triggerPaywall: shouldOpenPaywall,
        ),
      );
    } else if (openedFrom == AppRoutes.browseCategoryScreen.name &&
        appBloc
                .navigationDataAfterAuthentication
                ?.browseProductByCategoryParam !=
            null) {
      context.goNamed(
        AppRoutes.browseCategoryScreen.name,
        extra:
            appBloc
                .navigationDataAfterAuthentication
                ?.browseProductByCategoryParam!,
      );
      appBloc.add(
        AppEvent.navigationDataAfterAuthenticationSaved(
          navigationDataAfterAuthentication: NavigationDataAfterAuthentication(
            browseProductByCategoryParam: null,
          ),
          triggerPaywall: shouldOpenPaywall,
        ),
      );
    } else {
      context.go(AppRoutes.home.path);
    }
  }

  static List<FindingsHealthConcernUIModel> getHealthConcerns(
    SubmitProductInfoParams infoUIModel,
    HealthyLivingSharedLocalizations localization,
  ) {
    const lowHazard = HazardLevel.low;
    final healthConcerns =
        infoUIModel.provisionalScoreResponse?.provisionalScore?.healthConcerns;

    return [
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icDevelopmental,
        title:
            localization
                .productSubmit_ingredients_developmentalReproductiveToxicity,
        hazardLevel:
            (healthConcerns?.devRepNew ?? '').ratingHazardLevel ?? lowHazard,
      ),
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icAllergies,
        title: localization.productSubmit_ingredients_allergies,
        hazardLevel:
            (healthConcerns?.allergyNew ?? '').ratingHazardLevel ?? lowHazard,
      ),
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icCancer,
        title: localization.productSubmit_ingredients_cancer,
        hazardLevel:
            (healthConcerns?.cancerNew ?? '').ratingHazardLevel ?? lowHazard,
      ),
      FindingsHealthConcernUIModel(
        iconPath: DSIcons.icRestriction,
        title: localization.general_ingredients_useRestrictions,
        hazardLevel:
            (healthConcerns?.useResLevel ?? '').ratingHazardLevel ?? lowHazard,
      ),
    ];
  }

  static dynamic removeNulls(dynamic value) {
    if (value == null) return null;

    if (value is String) {
      final trimmed = value.trim();
      return trimmed.isEmpty ? null : trimmed;
    }

    if (value is Map) {
      final cleaned = <String, dynamic>{};
      value.forEach((k, v) {
        final newValue = removeNulls(v);
        if (newValue != null) {
          cleaned[k] = newValue;
        }
      });
      return cleaned.isEmpty ? null : cleaned;
    }

    if (value is List) {
      final cleaned = value.map(removeNulls).where((e) => e != null).toList();
      return cleaned.isEmpty ? null : cleaned;
    }

    return value;
  }


  static void entitlementVerificationScreenOnComplete({
    required BuildContext context,
    required Object? result,
  }) {
    if (result is SubscriptionConfirmationResult) {
      if (result.isSuccess) {
        context.read<AppBloc>().add(AppEvent.subscribedToPremium());
      }
      if (result.screenToOpen != null) {
        context.pushNamed(result.screenToOpen!.name);
      }
    }
  }
}
