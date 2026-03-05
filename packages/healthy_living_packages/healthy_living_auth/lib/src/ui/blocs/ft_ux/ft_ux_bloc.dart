import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_auth/src/analytics/auth_analytics.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_event.dart';
import 'package:healthy_living_auth/src/ui/blocs/ft_ux/ft_ux_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';
import 'package:storage/storage.dart';

@Injectable()
class FtUxBloc extends Bloc<FtUxEvent, FtUxState> {
  final KeyValueStorage _keyValueStorage;
  final AuthAnalytics _authAnalytics;

  FtUxBloc({
    required KeyValueStorage keyValueStorage,
    required AuthAnalytics authAnalytics,
  }) : _keyValueStorage = keyValueStorage,
       _authAnalytics = authAnalytics,
       super(FtUxComplete(isFtUxComplete: false)) {
    on<SetFtUxCompleted>(_onSetFtUxCompletedMode);
    on<ContinueAsGuestTapped>(_onContinueAsGuestTapped);
  }

  void _onSetFtUxCompletedMode(
    SetFtUxCompleted event,
    Emitter<FtUxState> emit,
  ) async {
    await _keyValueStorage.setBool(
      HealthyLivingSharedKeyValueConstant.isFtUxViewed,
      event.value,
    );

    if (state is FtUxComplete) {
      final current = state as FtUxComplete;
      emit(current.copyWith(isFtUxComplete: event.value));
    } else {
      emit(FtUxComplete(isFtUxComplete: false));
    }
  }

  Future<void> _onContinueAsGuestTapped(
    ContinueAsGuestTapped event,
    Emitter<FtUxState> emit,
  ) async {

    /// GA4 event (Skip Login)
    await _authAnalytics.logLoginSkip(
      source: StringConstants.onboarding,
    );
    emit(FtUxState.continueAsGuestSuccess());
  }
}
