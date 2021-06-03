import 'package:akt_test/app/models/crypto_model.dart';
import 'package:akt_test/app/models/section_model.dart';

class SectionsProvider {
  Future<List<SectionModel>> getSections() {
    return Future.value([
      SectionModel('Cryptos', _generateModels(7)),
      SectionModel('Tokens', _generateModels(7)),
      SectionModel('Cryptos', _generateModels(7)),
      SectionModel('Tokens', _generateModels(7)),
    ]);
  }

  List<CryptoModel> _generateModels(int count) {
    final generated = <CryptoModel>[];

    for (var i = 0; i < count; i++) {
      generated.add(CryptoModel.random());
    }

    return generated;
  }
}
