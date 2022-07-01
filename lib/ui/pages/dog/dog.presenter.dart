import 'package:app_ong/data/models/models.dart';

abstract class DogPresenter {
  Future<List<DogModel>> getAllDog();
}
