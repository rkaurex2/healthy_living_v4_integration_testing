extension IntFormatting on int {
  String withThousandSeparator([String separator = ',']) {
    if (this == 0) return '0';

    String numStr = abs().toString();
    String result = '';

    for (int i = 0; i < numStr.length; i++) {
      if (i > 0 && (numStr.length - i) % 3 == 0) {
        result += separator;
      }
      result += numStr[i];
    }

    return this < 0 ? '-$result' : result;
  }
}