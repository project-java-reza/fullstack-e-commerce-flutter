// fitur di dart, extension nama_extension on variabel
import 'package:intl/intl.dart';

extension StringExt on int {
  String get currencyFormatRp => NumberFormat.currency(
        locale: 'id',
        symbol: 'Rp. ',
        decimalDigits: 0,
      ).format(this);
}
