import 'package:app_filmes/modules/splash/splash_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class SplashBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }

}