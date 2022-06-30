import 'dart:async';
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
    verificarToken().then((value) {
      if (value) {
        Timer(const Duration(seconds: 5), () {
          Get.toNamed("/home");
        });
      } else {
        Timer(const Duration(seconds: 5), () {
          Get.toNamed("/login");
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Container(
        padding: const EdgeInsets.all(48),
        color: Colors.amber,
        child: const Center(
          child: Text('Splash Screen'),
        ),
      ),
    );
  }

  Future<bool> verificarToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if (sharedPreferences.getString('token') == null) {
      return false;
    } else {
      return true;
    }
  }
}
