import 'package:flutter/material.dart';

abstract class LoginController {
  GlobalKey<FormState> get formKey;

  TextEditingController get passowrd;

  TextEditingController get email;

  void login();
}
