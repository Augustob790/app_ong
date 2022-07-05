import 'dart:convert';

import 'package:app_ong/data/constants/constants.dart';
import 'package:app_ong/data/models/models.dart';
import 'package:app_ong/ui/pages/pages.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginPresentation extends GetxController implements LoginPresenter {
  @override
  Future<List<LoginModel>> loginJson() async {
    var url = Uri.parse(ApiRoutes.jsonLogin);
    var response = await http.get(url);
    final list = jsonDecode(response.body)['data'] as List<dynamic>;

    if (response.statusCode == 200) {
      return list.map((e) => LoginModel.fromJson(e)).toList();
    }
    return [];
  }
}
