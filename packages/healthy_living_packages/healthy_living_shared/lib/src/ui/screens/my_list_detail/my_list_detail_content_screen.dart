import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_bloc.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_events.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_state.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_detail_skeleton.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_more_skeleton.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_no_product_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/list/my_list_options_widget.dart';
import 'package:healthy_living_shared/src/ui/widgets/selection_options_sheet_view.dart';

class MyListDetailContentScreen extends StatefulWidget {
  final String listId;
  final String? openedFrom;

  const MyListDetailContentScreen({
    required this.listId,
    super.key,
    this.openedFrom,
  });

  @override
  State<MyListDetailContentScreen> createState() =>
      _MyListDetailContentScreenState();
}

class _MyListDetailContentScreenState extends State<MyListDetailContentScreen> {
  UserListModel? userListModel;
  List<UserListItemsModel>? userListItemsModel;
  List<UserListItemsModel>? selectedUserListItemsModel;
  bool isSelectionActivate = false;
  bool isRemoveProductActivate = false;
  bool isSelectAllEnable = false;
  late MyListDetailBloc myListDetailBloc;
  int pageSize = 500;
  int page = 0;
  bool isListDetailUpdated = false;
  bool hasMore = false;
  bool _isLoadingMore = false;
  ProductSelectionType productSelectionType = ProductSelectionType.none;

  bool get _isOpenFromSharedLink =>
      widget.openedFrom == StringConstants.shareList;

  @override
  void initState() {
    super.initState();

    myListDetailBloc = context.read<MyListDetailBloc>();
    myListDetailBloc.add(
      MyListDetailEvent.fetchProductListFromListId(
        listId: widget.listId,
        pageKey: 1,
        pageSize: pageSize,
        isSelectionActivate: isSelectionActivate,
        isSelectAllEnable: isSelectAllEnable,
        isOpenFromSharedLink: _isOpenFromSharedLink,
      ),
    );
  }

  @override
  void didUpdateWidget(covariant MyListDetailContentScreen oldWidget) {
    if (context.mounted && widget.listId != oldWidget.listId) {
      myListDetailBloc.add(
        MyListDetailEvent.fetchProductListFromListId(
          listId: widget.listId,
          pageKey: 1,
          pageSize: pageSize,
          isSelectionActivate: isSelectionActivate,
          isSelectAllEnable: isSelectAllEnable,
          isOpenFromSharedLink: _isOpenFromSharedLink,
        ),
      );
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final HealthyLivingSharedLocalizations healthyLivingSharedLocalizations =
        HealthyLivingSharedLocalizations.of(context)!;
    final appBloc = context.read<AppBloc>();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          context.pop(isListDetailUpdated);
        }
      },
      child: Scaffold(
        backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: context.dsColors.surfaceNeutralContainerWhite,
          automaticallyImplyLeading: false,
          surfaceTintColor: context.dsColors.surfaceNeutralContainerWhite,
          title: BlocBuilder<MyListDetailBloc, MyListDetailState>(
            buildWhen: (previous, current) {
              return current is ProductListLoading ||
                  current is ProductListLoaded ||
                  current is ProductSelectionActivated;
            },
            builder: (context, state) {
              if (state is ProductListLoaded) {
                userListModel = state.userListModel;
              }
              return isRemoveProductActivate == false
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          context.pop(isListDetailUpdated);
                        },
                        child: Container(
                          height: context.dsSizes.sz600,
                          width: context.dsSizes.sz700,
                          alignment: Alignment.centerLeft,
                          child: DSImage.asset(
                            DSIcons.icArrowLeft,
                            fit: BoxFit.none,
                            width: context.dsSizes.sz500,
                            height: context.dsSizes.sz500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: DSText(
                          text: userListModel?.name,
                          textStyle: DSTextStyleType.primaryHeadingS,
                          textColor: context.dsColors.textPrimaryDefault,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (!_isOpenFromSharedLink) ...{
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              DSSpacingWidget.horizontal(
                                spacing: context.dsSpacing.sp400,
                              ),
                              if (state is ProductListLoading ||
                                  state is AddToListLoading) ...{
                                MyListMoreSkeleton(),
                              } else ...{
                                GestureDetector(
                                  onTap:
                                      !(isSelectionActivate)
                                          ? () {
                                            DSBottomSheetWidget.showBottomSheet(
                                              context: context,
                                              isFullScreen: true,
                                              isDismissible: true,
                                              child: MyListOptionsWidget(
                                                listName:
                                                    userListModel?.name ?? "",
                                                myListDetailBloc:
                                                    myListDetailBloc,
                                                listId:
                                                    (userListModel?.id ?? 0)
                                                        .toString(),
                                                onPopScreenCallback: () {
                                                  context.pop(true);
                                                },
                                                onCallBack: () {
                                                  isListDetailUpdated = true;
                                                  myListDetailBloc.add(
                                                    MyListDetailEvent.fetchProductListFromListId(
                                                      listId: widget.listId,
                                                      pageKey: 1,
                                                      pageSize: pageSize,
                                                      isSelectionActivate:
                                                          isSelectionActivate,
                                                      isSelectAllEnable:
                                                          isSelectAllEnable,
                                                      isOpenFromSharedLink:
                                                          false,
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          }
                                          : null,
                                  child: DSImage.asset(
                                    DSIcons.icMoreHorizontalDots,
                                    width: context.dsSizes.sz500,
                                    height: context.dsSizes.sz500,
                                    color:
                                        (state is ProductSelectionActivated &&
                                                    state
                                                        .isSelectionActivate) &&
                                                userListItemsModel.isValidList
                                            ? context
                                                .dsColors
                                                .iconNeutralDisabled
                                            : context.dsColors.iconPrimary,
                                  ),
                                ),
                              },
                            ],
                          ),
                        ),
                      } else ...{
                        DSSpacingWidget.horizontal(
                          spacing: context.dsSpacing.sp600,
                        ),
                      },
                    ],
                  )
                  : Stack(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      GestureDetector(
                        onTap: () {
                          myListDetailBloc.add(
                            MyListDetailEvent.productSelectionActivate(
                              isSelectionActivate: false,
                            ),
                          );
                        },
                        child: DSImage.asset(
                          DSIcons.icClose,
                          width: context.dsSizes.sz500,
                          height: context.dsSizes.sz500,
                        ),
                      ),
                      Center(
                        child: DSText(
                          text:
                              healthyLivingSharedLocalizations
                                  .healthyLivingShared_lists_removeProducts,
                          textStyle: DSTextStyleType.primaryHeadingS,
                          textColor: context.dsColors.textPrimaryDefault,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  );
            },
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<MyListDetailBloc, MyListDetailState>(
            listener: (context, state) {
              if (state is ProductDeleteFailure) {
                DSToast.show(
                  context: context,
                  leadingIconPath: DSIcons.icWarning,
                  title:
                      healthyLivingSharedLocalizations
                          .general_couldNotRemoveItems,
                  showClose: true,
                  buttonText: healthyLivingSharedLocalizations.general_tryAgain,
                  onButtonTap: () {},
                );
              } else if (state is ProductDeleteSuccess) {
                isSelectionActivate = false;
                isRemoveProductActivate = false;
                isSelectAllEnable = false;
                isListDetailUpdated = true;
                myListDetailBloc.add(
                  MyListDetailEvent.fetchProductListFromListId(
                    listId: widget.listId,
                    pageKey: 1,
                    pageSize: pageSize,
                    isSelectionActivate: isSelectionActivate,
                    isSelectAllEnable: isSelectAllEnable,
                    isOpenFromSharedLink: false,
                  ),
                );
                DSToast.show(
                  context: context,
                  leadingIconPath: DSIcons.icCircleCheck,
                  title:
                      "${selectedUserListItemsModel?.length} ${selectedUserListItemsModel?.length == 1 ? healthyLivingSharedLocalizations.general_itemRemoved : healthyLivingSharedLocalizations.general_itemsRemoved}",
                );
              } else if (state is AddToListSuccess) {
                if (state.isSingleAdded) {
                  DSToast.show(
                    context: context,
                    leadingIconPath: DSIcons.icCircleCheck,
                    title:
                        healthyLivingSharedLocalizations
                            .general_addToList_alreadyAddedToList,
                  );
                } else {
                  DSToast.show(
                    context: context,
                    leadingIconPath: DSIcons.icCircleCheck,
                    title: healthyLivingSharedLocalizations
                        .general_addToList_addedTo(
                          state.userListModel?.name ?? "",
                        ),
                  );
                }
              }
            },
            listenWhen: (previous, current) {
              return current is ProductDeleteFailure ||
                  current is ProductDeleteSuccess ||
                  current is AddToListSuccess;
            },
            buildWhen: (previous, current) {
              return current is ProductListLoading ||
                  current is ProductListLoaded ||
                  current is ProductSelectionActivated ||
                  current is ProductSelected ||
                  current is ProductListAllSelectUnSelected ||
                  current is ProductListSelectionCleared ||
                  current is ProductDeleteInProgress ||
                  current is AddToListLoading;
            },
            builder: (context, state) {
              if (state is ProductListLoading || state is AddToListLoading) {
                return MyListDetailSkeleton();
              } else if (state is ProductListLoaded) {
                userListModel = state.userListModel;
                userListItemsModel = userListModel?.items;
                page = state.page;
                hasMore = state.hasMore;
                if (page > 1) {
                  _isLoadingMore = false;
                }
              } else if (state is ProductSelectionActivated) {
                if (state.isSelectionActivate &&
                    userListItemsModel.isValidList) {
                  isSelectionActivate = true;
                  isRemoveProductActivate = true;
                  userListItemsModel?.forEach((item) {
                    item.productSelectionType = ProductSelectionType.remove;
                  });
                } else {
                  isSelectionActivate = false;
                  isRemoveProductActivate = false;
                  isSelectAllEnable = false;
                  userListItemsModel?.forEach((item) {
                    item.productSelectionType = ProductSelectionType.none;
                  });
                }
              } else if (state is ProductSelected) {
                userListItemsModel?[state.index].productSelectionType =
                    state.productSelectionType;
              } else if (state is ProductListAllSelectUnSelected) {
                if (state.isSelectAll) {
                  isSelectAllEnable = false;
                  userListItemsModel?.forEach((item) {
                    item.productSelectionType = ProductSelectionType.remove;
                  });
                } else {
                  isSelectAllEnable = true;
                  userListItemsModel?.forEach((item) {
                    item.productSelectionType = ProductSelectionType.add;
                  });
                }
              } else if (state is ProductListSelectionCleared) {
                userListItemsModel?.forEach((item) {
                  item.productSelectionType = ProductSelectionType.remove;
                });
              }

              selectedUserListItemsModel =
                  userListItemsModel
                      ?.where(
                        (element) =>
                            element.productSelectionType ==
                            ProductSelectionType.add,
                      )
                      .toList();

              if (userListItemsModel?.isEmpty ?? false) {
                return MyListNoProductWidget(
                  listName: userListModel?.name ?? "",
                  addProductButtonOnPressed: () {
                    _navigateAddToProduct(
                      searchHintText:
                          healthyLivingSharedLocalizations
                              .general_list_searchAllProducts,
                    );
                  },
                  isOpenFromSharedLink: _isOpenFromSharedLink,
                );
              }
              return Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: context.dsSpacing.sp200,
                            right: context.dsSpacing.sp200,
                            top: context.dsSpacing.sp200,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (isSelectionActivate) ...{
                                    GestureDetector(
                                      onTap: () {
                                        myListDetailBloc.add(
                                          MyListDetailEvent.productListAllSelectUnSelect(
                                            isSelectAll:
                                                HealthyLivingSharedUtils.isAllProductSelected(
                                                  userListItemsModel,
                                                ),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: context.dsSpacing.sp200,
                                        ),
                                        child: DSText(
                                          text:
                                              HealthyLivingSharedUtils.isAllProductSelected(
                                                    userListItemsModel,
                                                  )
                                                  ? healthyLivingSharedLocalizations
                                                      .general_deSelectAll
                                                  : healthyLivingSharedLocalizations
                                                      .general_selectAll,
                                          textStyle:
                                              DSTextStyleType
                                                  .primaryBodySRegular,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              HealthyLivingSharedUtils.isAllProductSelected(
                                                    userListItemsModel,
                                                  )
                                                  ? context
                                                      .dsColors
                                                      .textNeutralSecondary
                                                  : context
                                                      .dsColors
                                                      .textPrimaryLink,
                                          textColor:
                                              HealthyLivingSharedUtils.isAllProductSelected(
                                                    userListItemsModel,
                                                  )
                                                  ? context
                                                      .dsColors
                                                      .textNeutralSecondary
                                                  : context
                                                      .dsColors
                                                      .textPrimaryLink,
                                        ),
                                      ),
                                    ),
                                  },
                                ],
                              ),
                              Expanded(
                                child: ProductPaginationListview<
                                  UserListItemsModel
                                >(
                                  items: userListItemsModel ?? [],
                                  page: page,
                                  pageSize: pageSize,
                                  hasMore: hasMore,
                                  padding: EdgeInsets.only(
                                    bottom:
                                        isSelectionActivate
                                            ? 100
                                            : context.dsSpacing.sp400,
                                  ),
                                  fetchPage: (page, size) async {
                                    if (hasMore && !_isLoadingMore) {
                                      _isLoadingMore = true;
                                      context.read<MyListDetailBloc>().add(
                                        MyListDetailEvent.fetchProductListFromListId(
                                          listId: widget.listId,
                                          pageKey: page + 1,
                                          pageSize: size,
                                          isSelectionActivate:
                                              isSelectionActivate,
                                          isSelectAllEnable: isSelectAllEnable,
                                          isOpenFromSharedLink:
                                              _isOpenFromSharedLink,
                                        ),
                                      );
                                    }
                                  },
                                  separator: DSDivider(),
                                  itemBuilder: (context, listData, index) {
                                    String score = "";
                                    late ProductCategory productCategory;
                                    if ((listData.product?.score ?? "")
                                        .isValidValue) {
                                      //score data will be getting in [productType]--> cosmetic

                                      final splitScore = listData.product?.score
                                          ?.split('_');
                                      productCategory =
                                          ProductCategory.personalCare;
                                      score = splitScore?.first ?? "";
                                    } else if (listData.product?.scores !=
                                        null) {
                                      //scores data will be getting in [productType]--> food
                                      productCategory = ProductCategory.food;
                                      score =
                                          HealthyLivingSharedUtils.formatFoodScore(
                                            (listData.product?.scores?.overall),
                                          );
                                    } else if (listData.product?.grade !=
                                        null) {
                                      //scores data will be getting in [productType]--> cleaner

                                      score =
                                          (listData.product?.grade ?? "")
                                              .toString();
                                      productCategory = ProductCategory.cleaner;
                                    }
                                    // KEY: TestKeys.listItemCard (dynamic per list item)
                                    return ProductRowItem(
                                      key: Key('list_item_card_$index'),
                                      imageUrl:
                                          listData.product?.imageUrl ?? "",
                                      brand: listData.product?.brandName ?? "",
                                      title: listData.product?.name ?? "",
                                      score: score,

                                      onTap: () {
                                        if (listData.productSelectionType ==
                                            ProductSelectionType.none) {
                                          navigateToProductDetail(
                                            product: listData.product!,
                                            productCategory: productCategory,
                                          );
                                        } else {
                                          myListDetailBloc.add(
                                            MyListDetailEvent.productSelect(
                                              productSelectionType:
                                                  listData.productSelectionType ==
                                                          ProductSelectionType
                                                              .remove
                                                      ? ProductSelectionType.add
                                                      : ProductSelectionType
                                                          .remove,
                                              index: index,
                                            ),
                                          );
                                        }
                                      },
                                      isEWGVerified:
                                          listData.product?.ewgVerified ??
                                          false,
                                      productSelectionType:
                                          listData.productSelectionType,
                                      ingredientPreference:
                                          HealthyLivingSharedUtils.getProductIngredientPreference(
                                            ingredientPreferenceIndicator:
                                                listData
                                                    .ingredientPreferenceIndicator,
                                            isPremiumUser:
                                                appBloc.isPremiumUser,
                                          ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      if (!_isOpenFromSharedLink) ...{
                        Container(
                          decoration: BoxDecoration(
                            color:
                                context.dsColors.surfaceNeutralContainerWhite,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.1),
                                offset: Offset(0, -2),
                                blurRadius: context.dsRadius.rd200,
                                spreadRadius: 0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(context.dsSpacing.sp400),
                            child: DSButtonPrimary.fill(
                              text:
                                  healthyLivingSharedLocalizations
                                      .healthyLivingShared_lists_addProducts,
                              leadingIconPath: DSIcons.icAdd,
                              onPressed: () {
                                _navigateAddToProduct(
                                  searchHintText:
                                      healthyLivingSharedLocalizations
                                          .general_list_searchAllProducts,
                                );
                              },
                              size: DSButtonSize.small,
                              textStyle: DSTextStyleType.primaryButtonLRegular,
                            ),
                          ),
                        ),
                      },
                    ],
                  ),
                  if (isRemoveProductActivate) ...{
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SelectionOptionsSheetView(
                          onTap: () {
                            myListDetailBloc.add(
                              MyListDetailEvent.productDeleteFromList(
                                listId: (userListModel?.id ?? 0).toString(),
                                listName: userListModel?.name ?? "",
                                userList:
                                    (selectedUserListItemsModel ?? [])
                                        .map(
                                          (element) =>
                                              UserListItemsAttributesModel(
                                                productType:
                                                    element.productType ?? "",
                                                productId:
                                                    element.productId ?? -1,
                                                destroy: true,
                                              ),
                                        )
                                        .toList(),
                              ),
                            );
                          },
                          onTapClearSelection: () {
                            myListDetailBloc.add(
                              MyListDetailEvent.productListSelectionClear(),
                            );
                          },
                          onTapClose: () {
                            myListDetailBloc.add(
                              MyListDetailEvent.productSelectionActivate(
                                isSelectionActivate: false,
                              ),
                            );
                          },
                          dsButtonState:
                              state is ProductDeleteInProgress
                                  ? DSButtonState.loading
                                  : (selectedUserListItemsModel ?? [])
                                      .isNotEmpty
                                  ? DSButtonState.normal
                                  : DSButtonState.disabled,
                          selectItemCount:
                              (selectedUserListItemsModel ?? []).length,
                          title:
                              healthyLivingSharedLocalizations
                                  .healthyLivingShared_lists_removeProducts,
                          buttonText:
                              "${healthyLivingSharedLocalizations.healthyLivingShared_lists_removeSelected} ${(selectedUserListItemsModel ?? []).isNotEmpty ? "(${(selectedUserListItemsModel ?? []).length})" : ""}",
                        ),
                      ],
                    ),
                  },
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _navigateAddToProduct({required String searchHintText}) {
    context
        .pushNamed(
          AppRoutes.myItems.name,
          extra: SearchScreenParams(
            initialSelectedTabType: SearchTabType.products,
            shouldDisplayTabBar: false,
            textInputHintText: searchHintText,
            productListSelectionActivate: true,
            productSelectionOptionsItem: ProductSelectionOptionsItem.addToList,
            listNameAddToList: userListModel?.name ?? "",
          ),
        )
        .then((value) {
          if (value != null && value is List<UserListItemsAttributesModel>) {
            if (value.isValidList) {
              isListDetailUpdated = true;
              myListDetailBloc.add(
                MyListDetailEvent.addToListFromBrowse(
                  userListItemsAttributesModel: value,
                  listId: (userListModel?.id ?? -1).toString(),
                  listName: userListModel?.name ?? "",
                ),
              );
            }
          }
        });
  }

  void navigateToProductDetail({
    required UserListProductModel product,
    required ProductCategory? productCategory,
  }) {
    if (product.productId.toString().isValidValue) {
      context.pushNamed(
        AppRoutes.myItemsProductDetail.name,
        extra: ProductDetailParamModel(
          productCategory: productCategory!,
          productId: product.productId!,
        ),
      );
    }
  }
}
