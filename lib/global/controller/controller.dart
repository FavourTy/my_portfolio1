import 'package:get/get.dart';
import '../theme/theme_controller.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ThemeController _themeController = Get.find<ThemeController>();

  Rx<String> currentModeName = ''.obs;

  RxBool isDarkMode = false.obs; // Current Theme Stage

  @override
  void onInit() {
    //Getting theme Stage from ThemeController when homeView initialized
    isDarkMode.value = _themeController.isDarkTheme;
    currentModeName.value = _themeController.isDarkTheme ? 'Dark' : 'Light';
    super.onInit();
  }

  // Change Theme  Method That will call From HomeView
  void changeAppTheme() => _changeTheme();

  // Toggleing the Theme
  bool toggleTheme() {
    _changeTheme();
    return isDarkMode.value;
  }

  // Calling the changeTheme Method from ThemeController
  void _changeTheme() {
    _themeController.changeTheme(
      isDarkMode: isDarkMode,
      modeName: currentModeName,
    );
   
  }

  @override
  void onClose() {
    super.onClose();
  }
}