import 'dart:convert';
import 'package:app_ong/data/constants/apiroutes.dart';
import 'package:app_ong/ui/pages/pages.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginPresentation extends GetxController implements LoginPresenter {
  @override
  Future<bool> login(String email, String senha) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var url = Uri.parse(ApiRoutes.login);
    var resposta = await http.post(
      url,
      body: {
        'email': email,
        'password': senha,
      },
    );
    if (resposta.statusCode == 200) {
      await sharedPreferences.setString(
          'token', "Token ${jsonDecode(resposta.body)['token']}");
      return true;
    } else {
      jsonDecode(resposta.body);
      return false;
    }
  }
}
