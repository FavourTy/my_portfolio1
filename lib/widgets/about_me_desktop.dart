// ignore_for_file: avoid_print

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfollio/global/appAssets.dart';
import '../global/app_text_style.dart';
import '../global/constants.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:newton_particles/newton_particles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutMeDesktop extends StatelessWidget {
  const AboutMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Constants.sizedBox(height: 10.h),
          Row(
            children: [
              Row(
                children: [
                  GradientText(
                    'About the creator',
                    style: AppTextStyle.pTextStyle(context),
                    gradientType: GradientType.linear,
                    radius: 2.5.r,
                    colors: const [
                      Colors.blue,
                      Colors.yellow,
                      Colors.purple,
                    ],
                  ),
                  SizedBox(
                    width: 55.w,
                    height: 85.h,
                    child: Image.asset(AppAsset.grinning),
                  )
                ],
              ),
            ],
          ),
          Constants.sizedBox(height: 20.h),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Hello! I'm Adetayo, a passionate Flutter developer "
                        "recognized for adding a touch of enchantment to my code. "
                        "I specialize in crafting outstanding applications and am enthusiastic "
                        "about collaborating with bright minds in the Flutter development "
                        "community to enhance my continuous learning journey.",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        textAlign: TextAlign.justify,
                        style: AppTextStyle.aboutMeDeTextstyle(context),
                      ),
                      Text(
                        'In the ever-evolving realm of Flutter development, '
                        'I firmly believe that adaptability is the key to staying at the forefront. '
                        'I am a self-driven individual, constantly seeking to explore '
                        'new technologies and embrace emerging trends. '
                        'Embracing challenges, I actively pursue opportunities to expand my skill set.',
                        textAlign: TextAlign.justify,
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: AppTextStyle.aboutMeDeTextstyle(context),
                      ),
                      Constants.sizedBox(height: 5),
                      Text(
                        'Backed by a robust coding background and an unyielding determination, '
                        'I am confident in my ability to make a positive contribution to any team. '
                        'Let\'s unite and create something truly exceptional in the world of Flutter development!',
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.justify,
                        softWrap: true,
                        style: AppTextStyle.aboutMeDeTextstyle(context),
                      ),
                      Constants.sizedBox(height: 5.h),
                    ],
                  ),
                ),
                Constants.sizedBox(width: 40.w),
                Expanded(
                  child: SizedBox(
                    child: Stack(children: [
                      if (Theme.of(context).brightness == Brightness.light)
                        Newton(
                          // Add any kind of effects to your UI
                          // For example:
                          activeEffects: [
                            RainEffect(
                              particleConfiguration: ParticleConfiguration(
                                shape: CircleShape(),
                                size: const Size(5, 5),
                                color: const SingleParticleColor(
                                    color: Colors.purple),
                              ),
                              effectConfiguration: const EffectConfiguration(),
                            )
                          ],
                        )
                      else
                        Newton(
                          // Add any kind of effects to your UI
                          // For example:
                          activeEffects: [
                            RainEffect(
                              particleConfiguration: ParticleConfiguration(
                                shape: CircleShape(),
                                size: const Size(5, 5),
                                color: const SingleParticleColor(
                                    color: Colors.pink),
                              ),
                              effectConfiguration: const EffectConfiguration(),
                            )
                          ],
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText(
                                  'Flutter',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                                RotateAnimatedText(
                                  'GitHub',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                                RotateAnimatedText(
                                  'Dart',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                                RotateAnimatedText(
                                  'Firebase',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                              repeatForever: true,
                            ),
                          ),
                          Center(
                            child: AnimatedTextKit(
                              animatedTexts: [
                                RotateAnimatedText(
                                  'Material-UI',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                                RotateAnimatedText(
                                  'Git',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                                RotateAnimatedText(
                                  'C++',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                                RotateAnimatedText(
                                  'Google',
                                  textStyle: AppTextStyle.aaStyle(context),
                                ),
                              ],
                              onTap: () {
                                print("Tap Event");
                              },
                              repeatForever: true,
                            ),
                          )
                        ],
                      ),
                    ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
