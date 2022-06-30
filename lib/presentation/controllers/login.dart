import 'package:app_ong/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    if (!(formKey.currentState?.validate() ?? false) ||
        !await _presenter.login(email.text, passowrd.text)) return;
    Get.offAndToNamed("/home");
  }
}
