// ignore_for_file: unnecessary_string_escapes
import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../global/app_text_style.dart';
import '../global/constants.dart';
import 'profile_animation_mobile.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    //final screenWidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: Text("Hola,",
                      style: AppTextStyle.bodyTextStyle(context))),
              Constants.sizedBox(height: 15),
              Row(
                children: [
                  FadeInLeft(
                    duration: const Duration(milliseconds: 1400),
                    child: Text(
                      "I\'m",
                      style: AppTextStyle.bodyTextStyle(context),
                    ),
                  ),
                  Constants.sizedBox(width: 10),
                  FadeInDown(
                    duration: const Duration(milliseconds: 1400),
                    child: AnimatedTextKit(animatedTexts: [
                      ColorizeAnimatedText(
                        "Adetayo",
                        textStyle: AppTextStyle.bodyTextStyle(context),
                        colors: const [Colors.pink, Colors.blue, Colors.purple],
                      )
                    ], repeatForever: true),
                  )
                ],
              ),
              Constants.sizedBox(height: 15),
              FadeInLeft(
                duration: const Duration(milliseconds: 1400),
                child: Text(
                  "a flutter developer.",
                  style: AppTextStyle.bodyTextStyle(context),
                ),
              ),
              Constants.sizedBox(height: 35),
              FadeInLeft(
                duration: const Duration(milliseconds: 1400),
                child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        "Turning Imaginations Into Interactive Reality",
                        textStyle: AppTextStyle.blueUnderlinedStyle(context),
                      ),
                      TyperAnimatedText(
                          "Bringing your ideas to life through code",
                          textStyle: AppTextStyle.blueUnderlinedStyle(context)),
                    ],
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    repeatForever: true),
              ),
            ],
          ),
          Constants.sizedBox(height: 20),
          const MobileProfileAnimation(),
        ],
      ),
    );
  }
}
