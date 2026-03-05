import 'package:healthy_living_shared/healthy_living_shared.dart';
import 'package:intl/intl.dart';

class DateTimeUtils {
  String? formatDateTimeString({
    required String dateTimeFormat,
    String? dateTimeString,
  }) {
    if (!dateTimeString.isValidValue) return null;

    final dateTime = DateTime.tryParse(dateTimeString!);

    if (dateTime != null) {
      return DateFormat(dateTimeFormat).format(dateTime);
    } else {
      return null;
    }
  }
}
