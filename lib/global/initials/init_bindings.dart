import 'package:get/get.dart';
import '../theme/theme_controller.dart';
import 'init_controllers.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController());
    Get.lazyPut<InitialController>(() => InitialController());
  }
}