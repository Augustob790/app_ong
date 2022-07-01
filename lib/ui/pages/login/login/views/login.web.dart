import 'package:app_ong/ui/components/helpers/getviewcp.dart';
import 'package:app_ong/ui/pages/login/login.controller.dart';
import 'package:app_ong/ui/pages/login/login.presenter.dart';
import 'package:app_ong/ui/styles/app_colors.dart';
import 'package:app_ong/ui/styles/app_images.dart';
import 'package:flutter/material.dart';

class LoginPage extends GetViewCP<LoginController, LoginPresenter> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Center(
                    child: Image.asset(
                      AppImages.logo,
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  controller: controller.email,
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return 'Por Favor, digite seu e-mail';
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(controller.email.text)) {
                      return 'Por favor, digite um e-mail correto';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                  controller: controller.passowrd,
                  keyboardType: TextInputType.text,
                  validator: (senha) {
                    if (senha == null || senha.isEmpty) {
                      return "Por favor, digite sua senha";
                    } else if (senha.length < 6) {
                      return "Por favor uma senha maior que 6 caracteres";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    controller.login();
                  },
                  child: const Text('Entrar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
