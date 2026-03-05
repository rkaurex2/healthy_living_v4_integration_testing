enum UnitType {
  weight,
  volume,
  other;

  static UnitType fromUnit(String? unit) {
    if (unit == null || unit.trim().isEmpty) {
      return UnitType.other;
    }

    final normalizedUnit = unit.trim().toLowerCase();

    const weightUnits = {'g', 'oz', 'kg', 'lb'};
    const volumeUnits = {
      'ml',
      'fl oz',
      'l',
      'cups',
      'count',
      'servings',
      'loads',
    };

    if (weightUnits.contains(normalizedUnit)) {
      return UnitType.weight;
    }

    if (volumeUnits.contains(normalizedUnit)) {
      return UnitType.volume;
    }

    return UnitType.other;
  }
}
