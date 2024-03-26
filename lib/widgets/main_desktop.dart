// ignore_for_file: unnecessary_string_escapes

import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../global/app_text_style.dart';
import '../global/constants.dart';
import 'profile_animation.dart';


class MiMainDesktop extends StatelessWidget {
  const MiMainDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        //height: screensize.height/1.2,
        // constraints: BoxConstraints(
        //  maxHeight: 350
        // ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FadeInLeft(
                    duration: const Duration(milliseconds: 1500),
                    child: Text("Hola,",
                        style: AppTextStyle.bodyTextStyle(context))),
                Constants.sizedBox(height: 15),
                Row(
                  children: [
                    FadeInLeft(
                      duration: const Duration(milliseconds: 1500),
                      child: Text(
                        "I\'m",
                        style: AppTextStyle.bodyTextStyle(context),
                      ),
                    ),
                    Constants.sizedBox(width: 10),
                    FadeInDown(
                      duration: const Duration(milliseconds: 1500),
                      child: AnimatedTextKit(animatedTexts: [
                        ColorizeAnimatedText(
                          "Adetayo,",
                          textStyle: AppTextStyle.bodyTextStyle(context),
                          colors: const [
                            Colors.pink,
                            Colors.blue,
                            Colors.purple
                          ],
                        )
                      ], repeatForever: true),
                    )
                  ],
                ),
                Constants.sizedBox(height: 15),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1500),
                  child: Text(
                    "a flutter developer.",
                    style: AppTextStyle.bodyTextStyle(context),
                  ),
                ),
                Constants.sizedBox(height: 50),
                FadeInLeft(
                  duration: const Duration(milliseconds: 1400),
                  child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          "Swipe, Tap, Engage: Your Ideas Realized",
                          textStyle: AppTextStyle.blueUnderlinedStyle(context),
                        ),
                        TyperAnimatedText(
                            "Turning Imaginations into interactive reality",
                            textStyle:
                                AppTextStyle.blueUnderlinedStyle(context)),
                                 TyperAnimatedText(
                            "Bringing your ideas to life through code",
                            textStyle:
                                AppTextStyle.blueUnderlinedStyle(context)),
                      ],
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                      repeatForever: true),
                ),
              ],
            ),
            Constants.sizedBox(width: 200),
            const ProfileAnimation(),
          ],
        ));
  }
}
