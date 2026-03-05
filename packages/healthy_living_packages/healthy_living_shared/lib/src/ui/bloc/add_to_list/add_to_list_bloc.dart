import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/add_to_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/models/user_list/user_list_request_model.dart';
import 'package:healthy_living_shared/src/domain/repository/my_list_repository.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_event.dart';
import 'package:healthy_living_shared/src/ui/bloc/add_to_list/add_to_list_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class AddToListBloc extends Bloc<AddToListEvent, AddToListState> {
  final MyListRepository _myListRepository;

  AddToListBloc({required MyListRepository myListRepository})
    : _myListRepository = myListRepository,
      super(const AddToListState.initial()) {
    on<GetSavedList>(_getSavedList);
    on<AddToListInitialized>(_onCallInitial);
    on<OnChangeListItemIndex>(_onChangeListItemIndex);
    on<OnDoneButtonPressed>(_onDoneButtonPressed);
  }

  Future<void> _onCallInitial(
    AddToListInitialized event,
    Emitter<AddToListState> emit,
  ) async {
    emit(AddToListState.initial());
  }

  Future<void> _onChangeListItemIndex(
    OnChangeListItemIndex event,
    Emitter<AddToListState> emit,
  ) async {
    emit(AddToListState.updateSelectedIndex(index: event.index));
  }

  Future<void> _onDoneButtonPressed(
    OnDoneButtonPressed event,
    Emitter<AddToListState> emit,
  ) async {
    try {
      emit(const AddToListState.loadingDoneButton());
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
        final requestedListCount = event.userListItemsAttributesModel.length;
        final responseSkippedListCount = response.data?.skippedItems?.length ?? 0;
        final isSingleAdded = (requestedListCount == 1 && responseSkippedListCount == 1);
        emit(AddToListState.addToListSuccess(response.data, isSingleAdded));
      } else {
        emit(
          AddToListState.failure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(AddToListState.failure(exception));
    }
  }

  Future<void> _getSavedList(
    GetSavedList event,
    Emitter<AddToListState> emit,
  ) async {
    try {
      emit(const AddToListState.loading());
      final NetworkResponse<List<UserListModel>?> response =
          await _myListRepository.getUsersLists();
      if (response.isSuccess && response.data != null) {
        if (response.data!.isNotEmpty) {
          final sortedItems = response.data!;
          sortedItems.sort(
            (a, b) => (a.name).toLowerCase().compareTo((b.name).toLowerCase()),
          );
          emit(AddToListState.getUserListSuccess(userListModel: sortedItems));
        } else {
          emit(AddToListState.getUserListSuccess(userListModel: []));
        }
      } else {
        emit(
          AddToListState.loadSavedListFailure(
            UnknownNetworkException(
              message: "",
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (exception) {
      emit(AddToListState.loadSavedListFailure(exception));
    }
  }
}
