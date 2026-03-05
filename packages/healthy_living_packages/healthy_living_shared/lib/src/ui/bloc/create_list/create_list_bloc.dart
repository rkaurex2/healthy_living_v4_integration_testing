import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/create_list/create_list_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class CreateListBloc extends Bloc<CreateListEvent, CreateListState> {
  final MyListRepository _myListRepository;
  final CreateListAnalytics _createListAnalytics;

  CreateListBloc({
    required MyListRepository myListRepository,
    required CreateListAnalytics createListAnalytics,
  }) : _myListRepository = myListRepository,
       _createListAnalytics = createListAnalytics,
       super(const CreateListState.initial()) {
    on<OnNameListTextChanged>(_onNameListTextChanged);
    on<OnCreateListButtonPressed>(_onCreateListButtonPressed);
    on<OnExistCreateListSheet>(_onExistCreateListSheet);
    on<ProductAddToList>(_onProductAddToList);
  }

  Future<void> _onExistCreateListSheet(
    OnExistCreateListSheet event,
    Emitter<CreateListState> emit,
  ) async {
    emit(CreateListState.onExistCreateListSheet(isSuccess: event.isSuccess));
  }

  Future<void> _onNameListTextChanged(
    OnNameListTextChanged event,
    Emitter<CreateListState> emit,
  ) async {
    if (event.listName.trim().isValidValue) {
      emit(CreateListState.validateCreateButton(isCreateButtonEnable: true));
    } else {
      emit(CreateListState.validateCreateButton(isCreateButtonEnable: false));
    }
  }

  Future<void> _onCreateListButtonPressed(
    OnCreateListButtonPressed event,
    Emitter<CreateListState> emit,
  ) async {
    try {
      emit(CreateListState.isLoadingCreateListButton(isLoading: true));
      final createListResponse = await _myListRepository.createMyItemList(
        request: CreateListRequestModel(name: event.listName.trim()),
      );

      if (createListResponse.isSuccess && createListResponse.data != null) {
        emit(
          CreateListState.onSuccessCreateList(
            listId: (createListResponse.data?.id ?? 0).toString(),
            listName: createListResponse.data?.name ?? "",
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
          CreateListState.onFailureCreateList(
            createListException: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } catch (e) {
      if (e is NetworkException) {
        emit(CreateListState.onFailureCreateList(createListException: e));
      }
    }
  }

  Future<void> _onProductAddToList(
    ProductAddToList event,
    Emitter<CreateListState> emit,
  ) async {
    try {
      final response = await _myListRepository.addProductToList(
        addToListRequestModel: AddToListRequestModel(
          userList: UserListRequestModel(
            name: event.listName,
            itemsAttributes: event.userListItemsAttributesModel,
          ),
        ),
        listId: event.listId,
      );
      if (response.isSuccess && response.data != null) {
        emit(CreateListState.addToListSuccess(listId: event.listId));
      } else {
        emit(
          CreateListState.addToListFailure(
            exception: UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(CreateListState.addToListFailure(exception: exception));
    }
  }
}
