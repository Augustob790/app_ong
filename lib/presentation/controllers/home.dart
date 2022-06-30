import 'package:app_ong/ui/pages/home/home.controller.dart';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeControl implements HomeController {
  @override
  Future<bool> verificarSair() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
    return true;
  }

  @override
  void sair() {
    Get.offAndToNamed("/login");
  }
}
