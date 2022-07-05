import 'package:app_ong/data/models/models.dart';

abstract class LoginPresenter {
  Future<List<LoginModel>> loginJson();
}
