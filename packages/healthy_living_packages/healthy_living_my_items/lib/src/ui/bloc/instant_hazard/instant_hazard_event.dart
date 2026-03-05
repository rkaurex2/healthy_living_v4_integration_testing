import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

part 'instant_hazard_event.freezed.dart';

@freezed
sealed class InstantHazardEvent with _$InstantHazardEvent {

  const factory InstantHazardEvent.pollingOcr({
    required String jobId,
    required ProductCategory productCategory,
  }) = PollingOCR;


  const factory InstantHazardEvent.findingsTabChanged(int tabIndex)
  = FindingsTabChanged;
}
