import 'package:flutter/material.dart';
import 'package:my_portfollio/global/appAssets.dart';
import 'package:my_portfollio/global/app_text_style.dart';
import 'package:my_portfollio/views/home_page.dart';
import 'package:tbib_splash_screen/splash_screen.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          SplashScreenView(
                  // navigateWhere: isLoaded,
                   navigateRoute: const MiHomePage(),
                   text: WavyAnimatedText(
                     "ADETAYO",
                     textStyle: AppTextStyle.spStyle(context),
                   ),
                   imageSrc: AppAsset.myDash
                 ),
    );
  }
}