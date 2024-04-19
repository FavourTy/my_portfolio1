import 'package:flutter/material.dart';
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
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({super.key});
 final ThemeController _themeController = Get.put(ThemeController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My Portfolio',
       initialBinding:
          InitialBinding(),
        //  themeMode: ThemeMode.system, // Initial Binding to make Sure the ThemeController is initialized
     themeMode: _themeController.themeStateFromHiveSettingBox, // Setting the ThemeMode from the Hive Setting Box
      theme: CustomTheme.lightTheme, // CustomThemeData for Light Theme
      darkTheme: CustomTheme.darkTheme,
      // theme: Provider.of<ThemeProvider>(context).themedata,
      
      // themeMode: ThemeMode.system,
      home: const SplashScreen(),//MiTesting(),
      debugShowCheckedModeBanner: false,
    );
  }
}
