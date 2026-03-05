import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/widgets/cta_section_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/newsletter_form_section_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/newsletter_text_block_widget.dart';

class NewsletterScreenExtraParams {
  final String email;
  final String openedFrom;
  final String? country;
  final String zipcode;
  final bool isOpenFromSocialLogin;

  const NewsletterScreenExtraParams({
    required this.email,
    required this.openedFrom,
    required this.isOpenFromSocialLogin,
    this.country = StringConstants.defaultSelectedCountryCode,
    this.zipcode = "",
  });

  Map<String, dynamic> toExtraParams() => {
    StringConstants.emailExtraParamKey: email,
    StringConstants.zipcodeExtraParamKey: zipcode,
    StringConstants.openedFrom: openedFrom,
  };
}

class NewsletterScreen extends StatefulWidget {
  const NewsletterScreen({
    required this.email,
    required this.openedFrom,
    required this.zipcode,
    required this.isOpenFromSocialLogin,
    this.country,
    super.key,
  });

  final String email;
  final String? country;
  final String openedFrom;
  final String zipcode;
  final bool isOpenFromSocialLogin;

  @override
  State<NewsletterScreen> createState() => _NewsletterScreenState();
}

class _NewsletterScreenState extends State<NewsletterScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations localizations =
        HealthyLivingSharedLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(bottom: context.dsSpacing.sp200),
          child: BlocProvider<NewsletterBloc>(
            create:
                (_) =>
                    injector.get<NewsletterBloc>()..add(
                      NewsletterEvent.newsletterInitialized(
                        email: widget.email,
                        zipcode: widget.zipcode,
                        country: _country(),
                      ),
                    ),
            child: Builder(
              builder: (builderContext) {
                return BlocListener<NewsletterBloc, NewsletterState>(
                  listenWhen: (previous, current) {
                    return current.status == NewsletterStatus.success ||
                        current.status == NewsletterStatus.failure;
                  },
                  listener: (listenerContext, state) {
                    if (state.status == NewsletterStatus.success) {
                      DSToast.show(
                        appToastStyle: DSToastStyle.light,
                        context: listenerContext,
                        title:
                            localizations
                                .healthyLivingShared_newsletter_successfullySignedUpNewsletter,
                      );
                      _navigateToHome(listenerContext);
                    } else if (state.status == NewsletterStatus.failure) {
                      final errorMessage =
                          HealthyLivingSharedUtils.getServerErrorMessage(
                            localizations: localizations,
                            exception: state.exception,
                          );
                      DSToast.show(
                        context: context,
                        title: errorMessage,
                        leadingIconPath: DSIcons.icWarning,
                      );
                    }
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      HeaderWithTitle(
                        title:
                        localizations
                            .healthyLivingShared_newsletter_newsletterScreenTitle,
                        leadIcon:
                        widget.openedFrom == StringConstants.accounts &&
                            widget.isOpenFromSocialLogin == false
                            ? DSIcons.icArrowLeft
                            : null,
                        onTapLeadIcon:
                        widget.openedFrom == StringConstants.accounts &&
                            widget.isOpenFromSocialLogin == false
                            ? () {
                          context.pop();
                        }
                            : null,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.dsSpacing.sp400,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            spacing: context.dsSpacing.sp500,
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  controller: _scrollController,
                                  physics: ClampingScrollPhysics(),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      DSSpacingWidget.vertical(
                                        spacing: context.dsSpacing.sp700,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        spacing: context.dsSpacing.sp800,
                                        children: [
                                          DSImage.asset(
                                            DSIcons.icIllustrationNewsletter,
                                            width: context.dsSizes.sz900,
                                            height: context.dsSizes.sz900,
                                          ),
                                          const NewsletterInfoWidget(),
                                        ],
                                      ),
                                      DSSpacingWidget.vertical(
                                        spacing: context.dsSpacing.sp600,
                                      ),
                                      NewsletterFormSectionWidget(
                                        scrollToBottom: () {
                                          _scrollController.animateTo(
                                            _scrollController
                                                    .position
                                                    .maxScrollExtent +
                                                14,
                                            duration: Duration(milliseconds: 100),
                                            curve: Curves.easeOut,
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              NewsletterCtaSectionWidget(
                                onSubscribeToNewsletterTap: () {
                                  builderContext.read<NewsletterBloc>().add(
                                    const NewsletterEvent.subscribePressed(),
                                  );
                                },
                                onHomeTap: () {
                                  _navigateToHome(builderContext);
                                },
                                openedFrom: widget.openedFrom,
                                isOpenFromSocialLogin: widget.isOpenFromSocialLogin,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToHome(BuildContext context) {
    final appBloc = context.read<AppBloc>();
    appBloc.add(AppEvent.refreshUserLogin());
    HealthyLivingSharedUtils.authNavigationHandler(
      context: context,
      openedFrom: widget.openedFrom,
    );
  }

  String _country() {
    if (widget.country.isValidValue) {
      return widget.country!;
    }
    return StringConstants.defaultSelectedCountryCode;
  }
}
