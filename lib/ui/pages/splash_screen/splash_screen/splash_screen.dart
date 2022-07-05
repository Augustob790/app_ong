import 'dart:async';
import 'package:app_ong/presentation/presenters/presenters.dart';
import 'package:app_ong/ui/styles/app_images.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    verificaEmail().then((value) {
      if (value) {
        Timer(const Duration(seconds: 5), () {
          Get.offAllNamed("/home");
        });
      } else {
        Timer(const Duration(seconds: 5), () {
          Get.offAllNamed("/login");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
              child: Image.asset(
                AppImages.logo,
                width: 350,
                height: 350,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> verificaEmail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final email = sharedPreferences.getString('email');
    if (email != null) {
      LoginPresentation _presenterLogin = LoginPresentation();
      final list = await _presenterLogin.loginJson();

      for (var element in list) {
        if (element.email == email) {
          return true;
        }
      }
    }
    return false;
  }
}
