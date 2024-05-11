import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_portfollio/views/splash_screen.dart';
import 'global/initials/init_bindings.dart';
import 'global/theme/element/themeget.dart';
import 'global/theme/theme_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter(); // Initialize Hive
  await Hive.openBox('settings'); // Open the box that will store the settings
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeController _themeController = Get.put(ThemeController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 1920),
      // minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return GetMaterialApp(
          themeMode: _themeController.themeStateFromHiveSettingBox,
          title: 'My Portfolio',
          initialBinding: InitialBinding(),
          debugShowCheckedModeBanner: false,
          // You can use the library anywhere in the app even in theme
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}
