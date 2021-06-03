import 'dart:math';
import 'dart:ui';

class CryptoModel {
  static final List<String> _names = [
    'BTC',
    'XRP',
    'ETH',
    'ATK',
    'DENT',
    'AAVE',
    'UNI',
    'BNB',
    'USDT',
    'ADA'
  ];
  static const double _maxValue = 10000;

  static final Random _random = Random();

  final String name;
  final double amount;
  final double percent;
  final Color color;

  factory CryptoModel.random() {
    final color = _getRandomColor();
    final name = _getRandomName();
    final value = _getRandomValue();
    final percent = _getRandomPercent();

    return CryptoModel._(name, value, percent, color);
  }

  const CryptoModel._(this.name, this.amount, this.percent, this.color);

  static Color _getRandomColor() {
    final r = _random.nextInt(255);
    final g = _random.nextInt(255);
    final b = _random.nextInt(255);

    return Color.fromRGBO(r, g, b, 1);
  }

  static String _getRandomName() {
    return _names[_random.nextInt(_names.length)];
  }

  static double _getRandomValue() {
    return _random.nextDouble() * _maxValue;
  }

  static double _getRandomPercent() {
    return (_random.nextDouble() * 2) - 1;
  }
}
