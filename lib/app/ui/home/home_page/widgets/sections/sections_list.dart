import 'package:akt_test/app/models/section_model.dart';
import 'package:akt_test/app/ui/home/home_page/widgets/sections/section.dart';
import 'package:flutter/cupertino.dart';

class SectionsList extends StatelessWidget {
  final List<SectionModel> _sections;

  const SectionsList(this._sections);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
        (context, index) => Section(_sections[index]),
        childCount: _sections.length,
      )),
    );
  }
}
