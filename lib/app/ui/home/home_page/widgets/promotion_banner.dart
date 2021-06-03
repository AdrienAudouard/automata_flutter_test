import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PromotionBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image.png'), fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(AppLocalizations.of(context)!.pageHomePromotionTitle,
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(height: 12),
          Text(AppLocalizations.of(context)!.pageHomePromotionText,
              textAlign: TextAlign.center),
          const SizedBox(height: 12),
          _buildLearnMoreButton(style, context),
        ],
      ),
    );
  }

  ElevatedButton _buildLearnMoreButton(
      ButtonStyle style, BuildContext context) {
    return ElevatedButton.icon(
      label: const Icon(
        Icons.arrow_right_alt,
        color: Colors.white,
        size: 24.0,
      ),
      style: style,
      onPressed: () {},
      icon: Text(AppLocalizations.of(context)!.pageHomePromotionButton),
    );
  }
}
