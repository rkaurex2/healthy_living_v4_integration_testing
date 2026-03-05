import 'package:healthy_living_shared/healthy_living_shared.dart';

enum OCRPollingStatus {
  processing,
  completed,
  success,
  failed,
  error,
  stale,
  provisionalScoreCompleted,
  userEditsProvisionalScoreCompleted,
  userEditsProvisionalScoreFailed,
  unknown;

  static OCRPollingStatus fromString(String? value) {
    switch (value) {
      case StringConstants.processing:
        return OCRPollingStatus.processing;
      case StringConstants.ocrPollingCompleted:
        return OCRPollingStatus.completed;
      case StringConstants.ocrPollingSuccess:
        return OCRPollingStatus.success;
      case StringConstants.ocrPollingFailed:
        return OCRPollingStatus.failed;
      case StringConstants.ocrPollingError:
        return OCRPollingStatus.error;
      case StringConstants.provisionalScoreCompleted:
        return OCRPollingStatus.provisionalScoreCompleted;
      case StringConstants.userEditsProvisionalScoreCompleted:
        return OCRPollingStatus.userEditsProvisionalScoreCompleted;
      case StringConstants.userEditsProvisionalScoreFailed:
        return OCRPollingStatus.userEditsProvisionalScoreFailed;
      case StringConstants.stale:
        return OCRPollingStatus.stale;
      default:
        return OCRPollingStatus.unknown;
    }
  }
}
