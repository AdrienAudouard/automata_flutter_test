import 'package:akt_test/app/bloc/home_page_bloc.dart';
import 'package:akt_test/app/models/section_model.dart';
import 'package:akt_test/app/ui/home/home_page/widgets/promotion_banner.dart';
import 'package:akt_test/app/ui/home/home_page/widgets/sections/sections_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    homePageBloc.fetchAllSections();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [_buildSliverAppBar(context), _buildSectionsList()],
    );
  }

  StreamBuilder<List<SectionModel>> _buildSectionsList() {
    return StreamBuilder(
        stream: homePageBloc.allSections,
        builder: (context, AsyncSnapshot<List<SectionModel>> snapshot) {
          return SectionsList(snapshot.data ?? []);
        });
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      title: Text(AppLocalizations.of(context)!.pageHomeTitle),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        background: PromotionBanner(),
      ),
      expandedHeight: 425,
    );
  }

  @override
  void dispose() {
    homePageBloc.dispose();
    super.dispose();
  }
}
