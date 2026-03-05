import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:healthy_living_shared/src/domain/models/provisional_score/provisional_score_model.dart';

extension OcrProvisionalScoreMapper on OcrProvisionalScoreResponseDTO {
  OcrProvisionalScoreResponseModel toDomainModel() =>
      OcrProvisionalScoreResponseModel(
        submissionId: submissionId,
        jobId: jobId,
        status: status,
        completedAt: completedAt,
        extractedData: extractedData?.toDomainModel(),
        timings: timings?.toDomainModel(),
        provisionalScore: provisionalScore?.toDomainModel(),
        errorMessage: errorMessage,
        polling: polling?.toDomainModel(),
        userEditsProvisionalScore: userEditsProvisionalScore?.toDomainModel(),
      );
}

extension ExtractedDataDTOMapper on ExtractedDataDTO {
  ExtractedDataModel toDomainModel() => ExtractedDataModel(
    productName: productName?.toDomainModel(),
    brandName: brandName?.toDomainModel(),
    ingredients: ingredients?.toDomainModel(),
  );
}

extension ExtractedFieldDTOMapper on ExtractedFieldDTO {
  ExtractedFieldModel toDomainModel() => ExtractedFieldModel(
    value: value,
    confidence: confidence,
    ocrValue: ocrValue,
  );
}

extension TimingsDTOMapper on TimingsDTO {
  TimingsModel toDomainModel() => TimingsModel(
    labels: (labels ?? []).map((e) => e.toDomainModel()).toList(),
    llmSeconds: llmSeconds,
    ocrSeconds: ocrSeconds,
    totalSeconds: totalSeconds,
    stitchSeconds: stitchSeconds,
  );
}

extension LabelTimingDTOMapper on LabelTimingDTO {
  LabelTimingModel toDomainModel() =>
      LabelTimingModel(labelName: labelName, imageCount: imageCount);
}

extension ProvisionalScoreDTOMapper on ProvisionalScoreDTO {
  ProvisionalScoreModel toDomainModel() => ProvisionalScoreModel(
    score: score,
    source: source,
    ingredients: ingredients?.toDomainModel(),
    productForm: productForm,
    productUsage: productUsage,
    healthConcerns: healthConcerns?.toDomainModel(),
    useOnDamagedSkin: useOnDamagedSkin,
  );
}

extension ProvisionalScoreIngredientsDTOMapper
    on ProvisionalScoreIngredientsDTO {
  ProvisionalScoreIngredientsModel toDomainModel() =>
      ProvisionalScoreIngredientsModel(
        total: total,
        parsed: parsed,
        unparsed: unparsed,
        parsedSubstances: parsedSubstances?.toDomainModel(),
        unparsedIngredientsString: unparsedIngredientsString,
      );
}

extension HealthConcernsDTOMapper on HealthConcernsDTO {
  HealthConcernsModel toDomainModel() => HealthConcernsModel(
    cancerNew: cancerNew,
    allergyNew: allergyNew,
    devRepNew: devRepNew,
    useResLevel: useResLevel,
  );
}

extension ParsedSubstanceDTOMapper on ParsedSubstanceDTO {
  ParsedSubstanceModel toDomainModel() => ParsedSubstanceModel(
    name: name,
    score: score,
    ingredId: ingredId,
    origText: origText,
    substanceId: substanceId,
  );
}

extension ParsedSubstanceDTOListMapper on List<ParsedSubstanceDTO> {
  List<ParsedSubstanceModel> toDomainModel() =>
      map((e) => e.toDomainModel()).toList();
}

extension PollingStatusDTOMapper on PollingStatusDTO {
  PollingStatusModel toDomainModel() => PollingStatusModel(
    interval: interval,
    complete: complete,
    stage: stage,
    estimatedProgress: estimatedProgress,
    estimatedTimeRemaining: estimatedTimeRemaining,
    queuePosition: queuePosition,
    message: message,
  );
}
