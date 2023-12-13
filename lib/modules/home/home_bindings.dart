import 'package:app_filmes/modules/home/home_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class HomeBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(loginService: Get.find()), fenix: true);
  }

}