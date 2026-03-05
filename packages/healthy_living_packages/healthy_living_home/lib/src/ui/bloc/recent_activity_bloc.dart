import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_home/src/domain/respository/home_repository.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_event.dart';
import 'package:healthy_living_home/src/ui/bloc/recent_activity_state.dart';
import 'package:injectable/injectable.dart';
import 'package:network/network.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

@Injectable()
class RecentActivityBloc extends Bloc<RecentActivityEvent, RecentActivityState> {
  RecentActivityBloc({
    required HomeRepository homeRepository,
    required SessionRepository sessionRepository,
  }) : _homeRepository = homeRepository,
       _sessionRepository = sessionRepository,
       super(
         const RecentActivityState.recentActivityLoadInProgress(),
       ) {
    on<RecentActivityProductsFetched>(_onRecentActivityProductsFetched);
  }

  final HomeRepository _homeRepository;
  final SessionRepository _sessionRepository;

  Future<void> _onRecentActivityProductsFetched(
    RecentActivityProductsFetched event,
    Emitter<RecentActivityState> emit,
  ) async {
    try {
      emit(RecentActivityState.recentActivityLoadInProgress());
      final response = await _homeRepository.getRecentViewList();

      if (response.isSuccess && response.data != null) {
        await _sessionRepository.saveLogs(
          message: "getRecentViewList status:  success",
        );
        emit(
          RecentActivityState.recentActivityLoadSuccess(
            recentActivityProductList: response.data ?? [],
          ),
        );
      } else {
        await _sessionRepository.saveLogs(
          message: "getRecentViewList status:  failed",
        );
        emit(
          RecentActivityState.recentActivityLoadFailure(
            exception: UnknownNetworkException(
              message: "", // message is handled on UI
              statusCode: 0,
              originalError: "",
            ),
          ),
        );
      }
    } on Exception catch (e) {
      await _sessionRepository.saveLogs(
        message: "getRecentViewList exception:  throw",
      );
      emit(RecentActivityState.recentActivityLoadFailure(exception: e));
    }
  }
}
