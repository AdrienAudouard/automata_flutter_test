import 'package:akt_test/app/models/section_model.dart';
import 'package:akt_test/app/ui/home/home_page/widgets/sections/crypto_item.dart';
import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final SectionModel section;

  const Section(this.section);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(section.title, style: Theme.of(context).textTheme.headline2),
        const SizedBox(height: 8),
        Container(
          height: 200,
          child: _buildListView(),
        )
      ],
    );
  }

  ListView _buildListView() {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: section.cryptos.length,
      itemBuilder: (context, index) => CryptoItem(section.cryptos[index]),
      separatorBuilder: (_context, _index) => const SizedBox(width: 8),
    );
  }
}
