import 'package:akt_test/app/models/crypto_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CryptoItem extends StatelessWidget {
  static final _numberFormat =
      NumberFormat.currency(symbol: '€', decimalDigits: 2, locale: 'fr');
  static final _percentFormat = NumberFormat('###.00%');

  final CryptoModel cryptoItem;

  const CryptoItem(this.cryptoItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildColorBlock(),
        const SizedBox(height: 8),
        Text(cryptoItem.name.toUpperCase(),
            style: Theme.of(context).textTheme.headline3),
        const SizedBox(height: 4),
        Text(_numberFormat.format(cryptoItem.amount),
            style: Theme.of(context).textTheme.bodyText2),
        const SizedBox(height: 4),
        _buildPercentRow(context)
      ],
    );
  }

  Container _buildColorBlock() {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: cryptoItem.color
      ),
    );
  }

  Row _buildPercentRow(BuildContext context) {
    final assetPath = cryptoItem.percent > 0 ? 'assets/increase.png' : 'assets/down.png';

    return Row(
      children: [
        Image.asset(assetPath, width: 15, height: 15),
        const SizedBox(width: 4),
        Text(_percentFormat.format(cryptoItem.percent),
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .apply(color: _getPercentColor())
        ),
      ],
    );
  }

  Color _getPercentColor() {
    return cryptoItem.percent < 0 ? Colors.red : Colors.green;
  }
}
