import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_detail_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_events.dart';
import 'package:healthy_living_shared/src/ui/bloc/my_list_detail/my_list_detail_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class MyListDetailBloc extends Bloc<MyListDetailEvent, MyListDetailState> {
  final MyListDetailRepository _myListDetailRepository;
  UserListModel? _userListModel;

  UserListModel? get userListModel => _userListModel;
  final CreateListAnalytics _createListAnalytics;

  MyListDetailBloc({
    required MyListDetailRepository myListDetailRepository,
    required CreateListAnalytics createListAnalytics,
  }) : _myListDetailRepository = myListDetailRepository,
       _createListAnalytics = createListAnalytics,
       super(const MyListDetailState.initial()) {
    on<FetchProductListFromListId>(_onFetchProductListFromListId);
    on<DeleteList>(_onDeleteList);
    on<RenameList>(_onRenameList);
    on<OnChangeListName>(_onChangeListName);
    on<ProductSelectionActivate>(_onProductSelectionActivate);
    on<ProductSelect>(_onProductSelect);
    on<ProductListAllSelectUnSelect>(_onProductListAllSelectUnSelect);
    on<ProductListSelectionClear>(_onProductListSelectionClear);
    on<ProductDeleteFromList>(_onProductDeleteFromList);
    on<AddToListFromBrowse>(_onAddToListFromBrowse);
    on<ShareList>(_onShareList);
  }

  Future _onAddToListFromBrowse(
    AddToListFromBrowse event,
    Emitter<MyListDetailState> emit,
  ) async {
    try {
      emit(const MyListDetailState.addToListLoading());
      final response = await _myListDetailRepository.addProductToList(
        addToListRequestModel: AddToListRequestModel(
          userList: UserListRequestModel(
            name: event.listName,
            itemsAttributes: event.userListItemsAttributesModel,
          ),
        ),
        listId: event.listId,
      );
      if (response.isSuccess && response.data != null) {
        add(
          MyListDetailEvent.fetchProductListFromListId(
            listId: event.listId,
            pageKey: 1,
            pageSize: 20,
            isSelectionActivate: false,
            isSelectAllEnable: false,
            isOpenFromSharedLink: false,
          ),
        );
        final requestedListCount = event.userListItemsAttributesModel.length;
        final responseSkippedListCount =
            response.data?.skippedItems?.length ?? 0;
        final isSingleAdded =
            (requestedListCount == 1 && responseSkippedListCount == 1);
        emit(MyListDetailState.addToListSuccess(response.data, isSingleAdded));
      } else {
        emit(
          MyListDetailState.addToListFailure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(MyListDetailState.addToListFailure(exception));
    }
  }

  Future _onProductDeleteFromList(
    ProductDeleteFromList event,
    Emitter<MyListDetailState> emit,
  ) async {
    try {
      emit(MyListDetailState.productDeleteInProgress());
      final response = await _myListDetailRepository.deleteProductsList(
        listId: event.listId,
        addToListRequestModel: AddToListRequestModel(
          userList: UserListRequestModel(
            name: event.listName,
            itemsAttributes: event.userList,
          ),
        ),
      );

      if (response.isSuccess) {
        emit(MyListDetailState.productDeleteSuccess());
      } else {
        emit(
          MyListDetailState.productDeleteFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(MyListDetailState.onDeleteListFailure(exception: exception));
    }
  }

  void _onProductListSelectionClear(
    ProductListSelectionClear event,
    Emitter<MyListDetailState> emit,
  ) {
    emit(MyListDetailState.productListSelectionCleared());
  }

  void _onProductListAllSelectUnSelect(
    ProductListAllSelectUnSelect event,
    Emitter<MyListDetailState> emit,
  ) {
    emit(
      MyListDetailState.productListAllSelectUnSelected(
        isSelectAll: event.isSelectAll,
      ),
    );
  }

  void _onProductSelectionActivate(
    ProductSelectionActivate event,
    Emitter<MyListDetailState> emit,
  ) {
    emit(
      MyListDetailState.productSelectionActivated(
        isSelectionActivate: event.isSelectionActivate,
      ),
    );
  }

  void _onProductSelect(ProductSelect event, Emitter<MyListDetailState> emit) {
    emit(
      MyListDetailState.productSelected(
        productSelectionType: event.productSelectionType,
        index: event.index,
      ),
    );
  }

  void _onChangeListName(
    OnChangeListName event,
    Emitter<MyListDetailState> emit,
  ) {
    if (event.listName.trim().isValidValue) {
      emit(MyListDetailState.validateEditListButton(isEditButtonEnable: true));
    } else {
      emit(MyListDetailState.validateEditListButton(isEditButtonEnable: false));
    }
  }

  Future _onRenameList(
    RenameList event,
    Emitter<MyListDetailState> emit,
  ) async {
    try {
      emit(MyListDetailState.isLoadingEditListButton(isLoading: true));
      final createListResponse = await _myListDetailRepository.renameList(
        listId: event.listId,
        request: CreateListRequestModel(name: event.listName.trim()),
      );

      if (createListResponse.isSuccess && createListResponse.data != null) {
        emit(
          MyListDetailState.onEditListSuccess(
            listId: (createListResponse.data!.id).toString(),
          ),
        );

        /// GA4 event (Create List)
        await _createListAnalytics.logListCreated(
          listId: createListResponse.data!.id.toString(),
          listName: createListResponse.data!.name,
          itemCount: createListResponse.data!.items.length,
        );
      } else {
        emit(
          MyListDetailState.onEditListFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      if (e is NetworkException) {
        emit(MyListDetailState.onEditListFailure(exception: e));
      }
    }
  }

  Future _onDeleteList(
    DeleteList event,
    Emitter<MyListDetailState> emit,
  ) async {
    try {
      emit(MyListDetailState.isLoadingDeleteListButton(isLoading: true));
      final createListResponse = await _myListDetailRepository.deleteList(
        listId: event.listId,
      );

      if (createListResponse.isSuccess) {
        emit(MyListDetailState.onDeleteListSuccess());
      } else {
        emit(
          MyListDetailState.onDeleteListFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      if (e is NetworkException) {
        emit(MyListDetailState.onDeleteListFailure(exception: e));
      }
    }
  }

  Future _onFetchProductListFromListId(
    FetchProductListFromListId event,
    Emitter<MyListDetailState> emit,
  ) async {
    try {
      if (event.pageKey == 1) {
        emit(MyListDetailState.productListLoading(isLoading: true));
      }
      final NetworkResponse<UserListModel?> response;
      if (event.isOpenFromSharedLink) {
        response = await _myListDetailRepository.productListFromListId(
          listId: event.listId,
          page: event.pageKey,
          pageSize: event.pageSize,
        );
      } else {
        response = await _myListDetailRepository.userListFromListId(
          listId: event.listId,
          page: event.pageKey,
          pageSize: event.pageSize,
        );
      }

      if (response.isSuccess && response.data != null) {
        if (_userListModel != null && event.pageKey > 1) {
          final totalEntries = response.data!.totalEntries;
          response.data?.items.forEach((item) {
            !event.isSelectionActivate
                ? ProductSelectionType.none
                : event.isSelectAllEnable
                ? item.productSelectionType = ProductSelectionType.add
                : item.productSelectionType = ProductSelectionType.remove;
          });
          _userListModel?.items.addAll(response.data?.items ?? []);

          emit(
            MyListDetailState.productListLoaded(
              userListModel: _userListModel!,
              hasMore: (_userListModel?.items.length ?? 0) < totalEntries,
              page: event.pageKey,
            ),
          );
        } else {
          UserListModel data = response.data!;
          _userListModel = data;
          emit(
            MyListDetailState.productListLoaded(
              userListModel: data,
              hasMore: data.totalEntries > data.items.length,
              page: 1,
            ),
          );
        }
      } else {
        emit(
          ProductListFailure(
            exception: UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      emit(ProductListFailure(exception: e as Exception));
    }
  }

  Future<void> _onShareList(
    ShareList event,
    Emitter<MyListDetailState> emit,
  ) async {
    if (event.listId.isValidValue) {
      final deepLinkService = injector.get<DeepLinkHandler>();
      await deepLinkService.shareListLink(
        listId: event.listId,
        listName: event.listName,
        messageText: event.messageText,
        messageTitle: event.messageTitle,
        sharingTitle: event.sharingTitle,
      );
    }
  }
}
