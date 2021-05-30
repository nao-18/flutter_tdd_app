import 'package:intl/intl.dart' as intl;

class Logic {
  late String _text = "0";
  get text => _text;

  // 現在の値
  double _currentValue = 0;

  intl.NumberFormat formatter = intl.NumberFormat('#,###', 'es_US');

  void input(String text) {
    if (_text == "0") {
      _currentValue = double.parse(text);
    } else {
      _currentValue = _currentValue * 10 + double.parse(text);
    }

    _text = formatter.format(_currentValue);
  }
}