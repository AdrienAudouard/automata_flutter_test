import 'package:akt_test/app/models/section_model.dart';
import 'package:akt_test/app/ressources/sections_provider.dart';

class Repository {
  final _sectionsProvider = SectionsProvider();

  Future<List<SectionModel>> getSections() {
    return _sectionsProvider.getSections();
  }
}
