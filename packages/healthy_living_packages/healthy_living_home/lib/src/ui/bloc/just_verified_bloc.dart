import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_home/src/domain/models/just_verified_request_model.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_event.dart';
import 'package:healthy_living_home/src/ui/bloc/just_verified_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

@Injectable()
class JustVerifiedBloc extends Bloc<JustVerifiedEvent, JustVerifiedState> {
  JustVerifiedBloc({
    required HomeRepository homeRepository,
  }) : _homeRepository = homeRepository,
       super(
         const JustVerifiedState.justVerifiedListLoadInProgress(),
       ) {
    on<JustVerifiedProductsFetched>(_onJustVerifiedProductsFetched);
  }

  final HomeRepository _homeRepository;

  Future<void> _onJustVerifiedProductsFetched(
    JustVerifiedProductsFetched event,
    Emitter<JustVerifiedState> emit,
  ) async {
    try {
      emit(JustVerifiedState.justVerifiedListLoadInProgress());
      final response = await _homeRepository.getJustVerified(
        justVerifiedRequestModel: JustVerifiedRequestModel(
          search: "",
          page: IntegerConstants.defaultPage.toString(),
          perPage: IntegerConstants.defaultHomeProductsPerPage.toString(),
          sort: SortBy.newest.queryParamValue,
          direction: SortOrder.asc.name,
          limitToEwgv: "Y",
        ),
      );
      if (response.isSuccess && response.data != null) {
        emit(
          JustVerifiedState.justVerifiedListLoadSuccess(
            justVerifiedList: response.data ?? [],
          ),
        );
      } else {
        emit(
          JustVerifiedState.justVerifiedListLoadFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (e) {
      emit(JustVerifiedState.justVerifiedListLoadFailure(exception: e));
    }
  }
}
