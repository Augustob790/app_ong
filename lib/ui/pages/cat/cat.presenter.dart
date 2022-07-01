import 'package:app_ong/data/models/models.dart';

abstract class CatPresenter {
  Future<List<CatModel>> getAllCat();
}
