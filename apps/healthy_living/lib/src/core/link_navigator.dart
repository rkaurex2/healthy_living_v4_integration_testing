import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living/src/app_router_config.dart';
import 'package:healthy_living/src/domain/models/deep_link_data_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart'
    show
        AnalyticsEvents,
        AnalyticsParameters,
        AnalyticsService,
        AppBloc,
        AppRoutes,
        HealthyLivingSharedLocalizations,
        HealthyLivingSharedUtils,
        ProductCategory,
        ProductDetailParamModel,
        StringConstants,
        UserListScreenParams,
        Validate,
        injector;

class LinkNavigator {
  const LinkNavigator._();

  static Future<void> navigate(
    BuildContext context,
    DeepLinkDataModel payload,
    String openFrom,
  ) async {
    if (!context.mounted) return;

    switch (payload.type) {
      case StringConstants.resetPasswordType:
        await _handleResetPassword(context, payload, openFrom);
        break;

      case StringConstants.productType:
        await _handleProduct(payload, openFrom);
        break;

      case StringConstants.listType:
        await _handleList(payload, openFrom);
        break;

      case StringConstants.urlType:
        await _handleWeb(payload, openFrom, context);
        break;

      default:
        debugPrint('[LinkNavigator] No handler for type: ${payload.type}');
        break;
    }
  }

  static void _postFrame(VoidCallback action) async {
    await WidgetsBinding.instance.endOfFrame;
    action();
  }

  static Future<void> _handleResetPassword(
    BuildContext context,
    DeepLinkDataModel payload,
    String openFrom,
  ) async {
    final code = payload.data[StringConstants.code];

    if (code is! String || !code.isValidValue) return;

    final analytics = injector.get<AnalyticsService>();

    if (HealthyLivingSharedUtils.isSensitiveRoute(lastKnownRoute)) {
      final appBloc = context.read<AppBloc>();
      final isFtUxCompleted = await appBloc.getIsFtUxCompletedStatus();

      appRouter.go(
        isFtUxCompleted ? AppRoutes.home.path : AppRoutes.letsGetStarted.path,
      );

      await analytics.logEvent(
        name: AnalyticsEvents.resetPasswordLink,
        parameters: {
          AnalyticsParameters.code: code,
          AnalyticsParameters.source: openFrom,
        },
      );

      _postFrame(() {
        appRouter.pushNamed(
          AppRoutes.createNewPassword.name,
          extra:
              payload.toResetPasswordMap()
                ..[StringConstants.openedFrom] = StringConstants.forgotPassword,
        );
      });
    } else {
      await analytics.logEvent(
        name: AnalyticsEvents.resetPasswordLink,
        parameters: {
          AnalyticsParameters.code: code,
          AnalyticsParameters.source: openFrom,
        },
      );

      _postFrame(() {
        appRouter.pushNamed(
          AppRoutes.createNewPassword.name,
          extra:
              payload.toResetPasswordMap()
                ..[StringConstants.openedFrom] = StringConstants.forgotPassword,
        );
      });
    }
  }

  static Future<void> _handleProduct(
    DeepLinkDataModel payload,
    String openFrom,
  ) async {
    final productId = int.tryParse(
      '${payload.data[StringConstants.productId]}',
    );

    if (productId == null) return;

    final categoryName = payload.data[StringConstants.productCategory];

    await injector.get<AnalyticsService>().logEvent(
      name: AnalyticsEvents.productSharedLink,
      parameters: {
        AnalyticsParameters.productId: productId,
        AnalyticsParameters.productCategory: categoryName,
        AnalyticsParameters.source: openFrom,
      },
    );

    _postFrame(() {
      appRouter.goNamed(
        AppRoutes.findProductDetail.name,
        extra: ProductDetailParamModel(
          productCategory:
              ProductCategory.fromName(categoryName) ??
              ProductCategory.personalCare,
          productId: productId,
        ),
      );
    });
  }

  static Future<void> _handleList(
    DeepLinkDataModel payload,
    String openFrom,
  ) async {
    final listId = payload.data[StringConstants.listId];

    if (listId is! String || !listId.isValidValue) return;

    await injector.get<AnalyticsService>().logEvent(
      name: AnalyticsEvents.listSharedOpen,
      parameters: {
        AnalyticsParameters.listId: listId,
        AnalyticsParameters.source: openFrom,
      },
    );

    _postFrame(() {
      appRouter.goNamed(
        AppRoutes.myItemMyListDetail.name,
        extra: UserListScreenParams(
          listId: listId,
          openedFrom: StringConstants.shareList,
        ),
      );
    });
  }

  static Future<void> _handleWeb(
    DeepLinkDataModel payload,
    String openFrom,
    BuildContext context,
  ) async {
    final url = payload.data[StringConstants.urlType];

    if (url is! String || !url.isValidValue) return;

    await injector.get<AnalyticsService>().logEvent(
      name: AnalyticsEvents.externalLink,
      parameters: {
        AnalyticsParameters.url: url,
        AnalyticsParameters.source: openFrom,
      },
    );

    if (!context.mounted) return;
    HealthyLivingSharedUtils.urlLaunch(
      localizations: HealthyLivingSharedLocalizations.of(context)!,
      url: url,
      errorCallback: (_) {},
    );
  }
}
