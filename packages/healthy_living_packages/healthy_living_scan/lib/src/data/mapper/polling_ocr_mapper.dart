import 'package:healthy_living_scan/src/data/models/polling_ocr_dto.dart';
import 'package:healthy_living_scan/src/domain/models/polling_ocr_model.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

extension PollingOcrMapper on PollingOcrDTO {
  PollingOcrModel toModel() => PollingOcrModel(
    submissionId: submissionId,
    jobId: jobId,
    status: status,
    completedAt: completedAt,
    extractedData: extractedData?.toModel(),
    timings: timings?.toModel(),
    polling: polling?.toModel(),
  );
}

extension ExtractedDataDTOMapper on ExtractedDataDTO {
  ExtractedDataModel toModel() => ExtractedDataModel(
    productName: productName?.toModel(),
    brandName: brandName?.toModel(),
    ingredients: ingredients?.toModel(),
  );
}

extension ExtractedFieldDTOMapper on ExtractedFieldDTO {
  ExtractedFieldModel toModel() =>
      ExtractedFieldModel(value: value, confidence: confidence,ocrValue: ocrValue);
}

extension TimingsDTOMapper on TimingsDTO {
  TimingsModel toModel() => TimingsModel(
    labels: (labels ?? []).map((e) => e.toModel()).toList(),
    llmSeconds: llmSeconds,
    ocrSeconds: ocrSeconds,
    totalSeconds: totalSeconds,
    stitchSeconds: stitchSeconds,
  );
}

extension LabelTimingDTOMapper on LabelTimingDTO {
  LabelTimingModel toModel() =>
      LabelTimingModel(labelName: labelName, imageCount: imageCount);
}

extension PollingStatusDTOMapper on PollingStatusDTO {
  PollingStatusModel toModel() => PollingStatusModel(
    interval: interval,
    complete: complete,
    stage: stage,
    estimatedProgress: estimatedProgress,
    estimatedTimeRemaining: estimatedTimeRemaining,
    queuePosition: queuePosition,
    message: message,
  );
}
