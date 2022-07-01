import 'package:app_ong/presentation/presenters/presenters.dart';
import 'package:app_ong/presentation/controllers/controllers.dart';
import 'package:app_ong/ui/pages/pages.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<LoginPresenter>(() => LoginPresentation(), fenix: true);
    Get.lazyPut<LoginController>(() => LoginControl(Get.find()), fenix: true);

    Get.lazyPut<HomeController>(() => HomeControl(), fenix: true);
    Get.lazyPut<HomePresenter>(() => HomePresentation(), fenix: true);

    Get.lazyPut<CatController>(() => CatControl(), fenix: true);
    Get.lazyPut<CatPresenter>(() => CatPresentation(), fenix: true);

    Get.lazyPut<DogController>(() => DogControl(), fenix: true);
    Get.lazyPut<DogPresenter>(() => DogPresentation(), fenix: true);
  }
}
