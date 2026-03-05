import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_find/src/analytics/search_analytics.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_bloc.dart';
import 'package:healthy_living_find/src/ui/bloc/universal_search_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

class SearchTopBar extends StatefulWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback? onBack;
  final VoidCallback? onScanner;
  final VoidCallback? onCompare;
  final VoidCallback? onMoreOptionsTap;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTextClearIconTap;
  final bool isMoreOptionDisable;

  const SearchTopBar({
    required this.controller,
    required this.focusNode,
    super.key,
    this.onBack,
    this.onScanner,
    this.onMoreOptionsTap,
    this.onCompare,
    this.onChanged,
    this.isMoreOptionDisable = true,
    this.onTextClearIconTap,
  });

  @override
  State<SearchTopBar> createState() => _SearchTopBarState();
}

class _SearchTopBarState extends State<SearchTopBar> {
  @override
  void initState() {
    widget.focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 52,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: context.dsSizes.sz400),
            child: Row(
              children: [
                Expanded(
                  child: BlocBuilder<UniversalSearchBloc, UniversalSearchState>(
                    builder: (context, state) {
                      final searchBloc = context.read<UniversalSearchBloc>();

                      // KEY: TestKeys.searchBar
                      return DSTextInput(
                        key: const Key('search_bar'),
                        controller: widget.controller,
                        focusNode: widget.focusNode,
                        size: DSTextInputSize.small,
                        iconSize: DSTextInputIconSize.large,
                        leadingIconPath: DSIcons.icArrowLeft,
                        leadingIconOnTap: widget.onBack,
                        trailingIconPath: DSIcons.icBrandedScanner,
                        borderRadius: BorderRadius.circular(
                          context.dsRadius.rd1000,
                        ),
                        hintText: searchBloc.textInputHintText,
                        onChanged: widget.onChanged,
                        enableTextClearIcon: true,
                        onTextClearIconTap: widget.onTextClearIconTap,
                        onTapOutside: (_) {
                          widget.focusNode.unfocus();
                        },
                        trailingIconOnTap: () async {
                          final appBloc = context.read<AppBloc>();
                          final analytics = injector.get<SearchAnalytics>();

                          /// Logs GA4 Event
                          await analytics.logScanStart(
                            source: AppRoutes.find.name,
                          );

                          if (!context.mounted) return;

                          await context.push(AppRoutes.scan.path).then((
                            result,
                          ) async {
                            if (result is ProductScanScreenResult &&
                                result.routeToOpenAfterScanClose ==
                                    AppRoutes.find) {
                              appBloc.add(
                                AppEvent.currentBottomBarIndex(
                                  isRefresh: true,
                                  bottomBarRefreshPage:
                                      BottomBarRefreshPage.searchScreen,
                                ),
                              );
                              if (context.mounted) {
                                /// Logs GA4 Event
                                await analytics.logSearchStart(
                                  source: AppRoutes.scan.name,
                                );
                                if (!context.mounted) return;
                                context.goNamed(
                                  AppRoutes.find.name,
                                  extra: SearchScreenParams(
                                    initialSelectedTabType:
                                        SearchTabType.products,
                                    shouldDisplayTabBar: false,
                                    textInputHintText: result.textInputHintText,
                                  ),
                                );
                              }
                            }
                          });
                        },
                      );
                    },
                  ),
                ),
                DSSpacingWidget.horizontal(spacing: 10),
                // KEY: TestKeys.threeDotsMenu
                GestureDetector(
                  key: const Key('three_dots_menu'),
                  onTap: () {
                    widget.onMoreOptionsTap?.call();
                  },
                  child: DSImage.asset(
                    DSIcons.icMoreHorizontalDots,
                    color:
                        widget.isMoreOptionDisable
                            ? context.dsColors.iconNeutralDisabled
                            : context.dsColors.iconPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
