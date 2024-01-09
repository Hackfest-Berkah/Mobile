import 'package:intl/intl.dart';

String currencyFormatter(num amount) {
  NumberFormat currencyFormat = NumberFormat.currency(
    locale: 'id_ID',
    decimalDigits: 2,
    symbol: '',
  );

  return currencyFormat.format(amount);
}
