import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_my_items/src/domain/respository/my_items_repository.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/my_items_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';

@Injectable()
class MyItemsBloc extends Bloc<MyItemsEvent, MyItemsState> {
  final MyItemsRepository _myItemsRepository;
  final CreateListAnalytics _createListAnalytics;

  MyItemsBloc({
    required MyItemsRepository myItemsRepository,
    required CreateListAnalytics createListAnalytics,
  }) : _myItemsRepository = myItemsRepository,
       _createListAnalytics = createListAnalytics,
       super(const MyItemsState.initialState()) {
    on<OnNameListTextChanged>(_onNameListTextChanged);
    on<OnCreateListButtonPressed>(_onCreateListButtonPressed);
    on<GetUserList>(_onGetUserList);
  }

  Future<void> _onGetUserList(
    GetUserList event,
    Emitter<MyItemsState> emit,
  ) async {
    try {
      emit(MyItemsState.userListLoading(isLoading: true));
      final createListResponse = await _myItemsRepository.getUserList();

      if (createListResponse.isSuccess && createListResponse.data != null) {
        emit(
          MyItemsState.onLoadUserList(
            userListModelList: createListResponse.data!,
          ),
        );
      } else {
        emit(
          MyItemsState.onFailureUserList(
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
        emit(MyItemsState.onFailureUserList(exception: e));
      }
    }
  }

  Future<void> _onNameListTextChanged(
    OnNameListTextChanged event,
    Emitter<MyItemsState> emit,
  ) async {
    if (event.listName.trim().isValidValue) {
      emit(MyItemsState.validateCreateButton(isCreateButtonEnable: true));
    } else {
      emit(MyItemsState.validateCreateButton(isCreateButtonEnable: false));
    }
  }

  Future<void> _onCreateListButtonPressed(
    OnCreateListButtonPressed event,
    Emitter<MyItemsState> emit,
  ) async {
    try {
      emit(MyItemsState.isLoadingCreateListButton(isLoading: true));
      final createListResponse = await _myItemsRepository.createMyItemList(
        request: CreateListRequestModel(name: event.listName.trim()),
      );

      if (createListResponse.isSuccess && createListResponse.data != null) {
        emit(
          MyItemsState.onCreateListSuccess(
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
          MyItemsState.onFailureCreateList(
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
        emit(MyItemsState.onFailureCreateList(createListException: e));
      }
    }
  }
}
