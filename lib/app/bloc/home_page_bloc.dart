import 'package:akt_test/app/models/section_model.dart';
import 'package:akt_test/app/ressources/repository.dart';
import 'package:rxdart/rxdart.dart';

class HomePageBloc {
  final _repository = Repository();
  final _sectionsFetcher = PublishSubject<List<SectionModel>>();

  Stream<List<SectionModel>> get allSections => _sectionsFetcher.stream;

  void fetchAllSections() {
    _repository.getSections().then((value) => _sectionsFetcher.sink.add(value));
  }

  void dispose() {
    _sectionsFetcher.close();
  }
}

final homePageBloc = HomePageBloc();