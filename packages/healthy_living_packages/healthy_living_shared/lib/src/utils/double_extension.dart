extension ClearDecimalZeroExtension on double? {
  /// Handles null by returning "0".
  /// Removes unnecessary decimals when the number is effectively an integer.
  /// Limits non-integer decimals to a maximum of 2 decimal places.
  /// Trims trailing zeros from decimals.
  String toClearDecimalZero() {
    if (this == null) return '0';
    if (this! % 1 == 0) {
      return this!.toInt().toString();
    }

    return this!.toStringAsFixed(2).replaceAll(RegExp(r'\.?0+$'), '');
  }
}
