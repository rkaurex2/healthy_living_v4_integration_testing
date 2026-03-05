import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_home/src/domain/models/home_your_list_request.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_event.dart';
import 'package:healthy_living_home/src/ui/bloc/your_list_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

@Injectable()
class YourListBloc extends Bloc<YourListEvent, YourListState> {
  YourListBloc({
    required HomeRepository homeRepository,
  }) : _homeRepository = homeRepository,
       super(
         const YourListState.yourListLoadInProgress(),
       ) {
    on<YourListFetched>(_onYourListFetched);
  }

  final HomeRepository _homeRepository;

  Future<void> _onYourListFetched(
    YourListFetched event,
    Emitter<YourListState> emit,
  ) async {
    try {
      emit(YourListState.yourListLoadInProgress());
      final response = await _homeRepository.getYourLists(
        homeYourListRequest: HomeYourListRequest(
          sortBy: SortBy.updatedDate.queryParamValue,
          sortOrder: SortOrder.desc.name,
        ),
      );
      if (response.isSuccess && response.data != null) {
        emit(
          YourListState.yourListLoadSuccess(userListModelList: response.data ?? []),
        );
      } else {
        emit(
          YourListState.yourListLoadFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (e) {
      emit(YourListState.yourListLoadFailure(exception: e));
    }
  }
}
