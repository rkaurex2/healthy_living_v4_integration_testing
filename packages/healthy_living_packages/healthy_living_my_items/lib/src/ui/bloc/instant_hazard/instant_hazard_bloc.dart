import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_event.dart';
import 'package:healthy_living_my_items/src/ui/bloc/instant_hazard/instant_hazard_state.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class InstantHazardBloc extends Bloc<InstantHazardEvent, InstantHazardState> {
  final HistoryProductRepository _repository;

  InstantHazardBloc({required HistoryProductRepository repository})
      : _repository = repository,
        super(const InstantHazardState.initial()) {
    on<PollingOCR>(_onPollingOCR);
    on<FindingsTabChanged>(_onFindingsTabChanged);

  }

  int _currentFindingsTab = 0;
  int get currentFindingsTab => _currentFindingsTab;

  OcrProvisionalScoreResponseDTO? ocrExtractedData;

  Future<void> _onPollingOCR(
      PollingOCR event,
      Emitter<InstantHazardState> emit,
      ) async {
    emit(OCRPollingLoading());
    try {
      final response = await _repository.pollingOCRProvisionalScore(
        jobId: event.jobId,
      );

      if (response.data != null) {
        final status = OCRPollingStatus.fromString(response.data!.status);

        if (status == OCRPollingStatus.provisionalScoreCompleted ||
            status == OCRPollingStatus.userEditsProvisionalScoreCompleted ||
            status == OCRPollingStatus.completed) {
          ocrExtractedData = response.data!;
          emit(
            InstantHazardState.ocrPollingSuccess(
              ocrExtractedData: response.data!,
              productCategory: event.productCategory,
            ),
          );
          return;
        }
      }
    } on Exception catch (exception) {
      emit(InstantHazarFailure(exception));
      return;
    }
  }

  void _onFindingsTabChanged(
      FindingsTabChanged event,
      Emitter<InstantHazardState> emit,
      ) {
    _currentFindingsTab = event.tabIndex;

    emit(
      InstantHazardState.updateFindingsTab(
        tabIndex: _currentFindingsTab,
      ),
    );
  }
}
