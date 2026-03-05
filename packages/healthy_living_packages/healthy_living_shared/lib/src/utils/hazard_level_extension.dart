import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:healthy_living_shared/healthy_living_shared.dart';

enum HazardLevel { noData, lowest, low, moderate, high, highest, verified }

enum RatingSize { small, big, bigger, large }

extension RatingHazardLevelExtension on String {
  HazardLevel? get ratingHazardLevel {
    final input = trim();

    if (input.isEmpty) return null;
    final type = input.replaceAll(RegExp(r'[_\-\s]+'), ' ').toLowerCase();
    switch (type) {
      case 'verified':
      case 'ewg verified':
        return HazardLevel.verified;
      case 'lowest':
      case 'very low':
        return HazardLevel.lowest;
      case 'low':
        return HazardLevel.low;
      case 'moderate':
      case 'medium':
        return HazardLevel.moderate;
      case 'high':
        return HazardLevel.high;
      case 'highest':
      case 'very high':
      case 'severe':
      case 'extreme':
        return HazardLevel.highest;
      case 'no data':
        return HazardLevel.noData;
      case 'unknown':
        return null;
    }

    // Case 1: Letters (A–F)

    if (RegExp(r'^[A-Za-z]+$').hasMatch(input)) {
      switch (toUpperCase()) {
        case "A":
          return HazardLevel.lowest;
        case "B":
          return HazardLevel.low;
        case "C":
          return HazardLevel.moderate;
        case "D":
        case "E":
          return HazardLevel.high;
        case "F":
          return HazardLevel.highest;
        default:
          return null;
      }
    }

    // Case 2: Numbers (1–10)
    final intValue = int.tryParse(input);
    if (intValue != null) {
      if (intValue >= 1 && intValue <= 2) {
        return HazardLevel.low;
      } else if (intValue >= 3 && intValue <= 6) {
        return HazardLevel.moderate;
      } else if (intValue >= 7 && intValue < 10) {
        return HazardLevel.high;
      }
    }

    // Case 3: Numbers (1.0–10.0)
    final value = double.tryParse(input);
    if (value != null) {
      if (value >= 1.0 && value < 4) {
        return HazardLevel.low;
      } else if (value >= 4.0 && value < 8) {
        return HazardLevel.moderate;
      } else if (value >= 8.0 && value <= 10.0) {
        return HazardLevel.high;
      }
    }

    return null;
  }
}

extension HazardLevelMapper on HazardLevel {
  static HazardLevel fromScore(String score) {
    switch (score) {
      case "1":
      case "2":
        return HazardLevel.low;
      case "3":
      case "4":
      case "5":
      case "6":
        return HazardLevel.moderate;
      default:
        return HazardLevel.high;
    }
  }

  String displayText(HealthyLivingSharedLocalizations localization) {
    switch (this) {
      case HazardLevel.noData:
        return localization.general_noData;
      case HazardLevel.lowest:
        return localization.product_rating_hazardLowestText;
      case HazardLevel.low:
        return localization.product_rating_hazardLowText;
      case HazardLevel.moderate:
        return localization.product_rating_hazardModerateText;
      case HazardLevel.high:
        return localization.product_rating_hazardHighText;
      case HazardLevel.highest:
        return localization.product_rating_hazardHighestText;
      case HazardLevel.verified:
        return localization.product_rating_hazardVerifiedText;
    }
  }

  Color displayColor(BuildContext context) {
    final colors = context.dsColors;
    switch (this) {
      case HazardLevel.noData:
        return colors.surfaceNeutralContainer6;
      case HazardLevel.lowest:
      case HazardLevel.low:
        return colors.surfaceScoresGood;
      case HazardLevel.moderate:
        return colors.surfaceScoresModerate;
      case HazardLevel.high:
      case HazardLevel.highest:
        return colors.surfaceScoresWorse;
      case HazardLevel.verified:
        return colors.surfaceNeutralContainerWhite;
    }
  }

  Color concernDotColor(BuildContext context) {
    final colors = context.dsColors;

    switch (this) {
      case HazardLevel.noData:
        return colors.surfaceNeutralContainer6;
      case HazardLevel.lowest:
      case HazardLevel.low:
        return colors.surfaceScoresGood;
      case HazardLevel.moderate:
        return colors.surfaceScoresModerate;
      case HazardLevel.high:
      case HazardLevel.highest:
        return colors.surfaceScoresWorse;
      case HazardLevel.verified:
        return colors.surfaceNeutralContainerWhite;
    }
  }

  String concernDotText(HealthyLivingSharedLocalizations localization) {
    switch (this) {
      case HazardLevel.noData:
        return localization.general_noData;
      case HazardLevel.lowest:
      case HazardLevel.low:
        return localization.product_rating_LowText;
      case HazardLevel.moderate:
        return localization.product_rating_ModerateText;
      case HazardLevel.high:
      case HazardLevel.highest:
        return localization.product_rating_HighText;
      case HazardLevel.verified:
        return "";
    }
  }
}

extension HazardTypeDotColor on String? {
  /// Returns the concern dot color based on the hazard type string.
  /// - If the string is null/invalid → [invalidFallback] (default: transparent).
  /// - If no keyword matches → [defaultFallback] (default: surfaceScoresGood).
  Color dotColor(
    BuildContext context, {
    Color? invalidFallback,
    Color? defaultFallback,
  }) {
    final colors = context.dsColors;
    if (this == null || !(this!.isValidValue)) {
      return invalidFallback ?? Colors.transparent;
    }

    final value = this!.toLowerCase();
    if (value.contains(StringConstants.low)) {
      return colors.surfaceScoresGood;
    }
    if (value.contains(StringConstants.moderate)) {
      return colors.surfaceScoresModerate;
    }
    if (value.contains(StringConstants.high)) {
      return colors.surfaceScoresWorse;
    }
    if (value.contains(StringConstants.noData)) {
      return colors.surfaceNeutralContainer6;
    }

    // Fallback matches your original function
    return defaultFallback ?? colors.surfaceScoresGood;
  }
}
