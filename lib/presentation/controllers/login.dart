import 'package:app_ong/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginControl implements LoginController {
  LoginControl(this._presenter);
  final LoginPresenter _presenter;
  @override
  final email = TextEditingController();

  @override
  final formKey = GlobalKey<FormState>();

  @override
  final passowrd = TextEditingController();

  @override
  void login() async {
    if (!(formKey.currentState?.validate() ?? false)) return;

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    final list = await _presenter.loginJson();

    for (var element in list) {
      if (element.email == email.text) {
        sharedPreferences.setString('email', email.text);
        Get.offNamed('/home');
        return;
      }
    }
    Get.snackbar("Atenção", "Verifique seu e-mail por favor",
        colorText: Colors.white,
        backgroundColor: Colors.red,
        snackPosition: SnackPosition.BOTTOM);
  }
}
