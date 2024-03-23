import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newton_particles/newton_particles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../global/app_text_style.dart';
import '../global/constants.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    // final screenWidth = screensize.width;
    final screenHeight = screensize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           GradientText(
                'Get to know me 😄',
                style:  AppTextStyle.pTextStyle(context),
                gradientType: GradientType.linear,
                radius: 2.5,
                colors: const [
                 Colors.blue,
                   Colors.yellow,
                  Colors.purple,
                ],
              ),
          Constants.sizedBox(height: 20),
          Text(
            "Hello! I'm Adetayo, a passionate Flutter developer "
            "recognized for adding a touch of enchantment to my code. "
            "I specialize in crafting outstanding applications and am enthusiastic "
            "about collaborating with bright minds in the Flutter development "
            "community to enhance my continuous learning journey.",
            maxLines: 8,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            textAlign: TextAlign.justify,
            style: AppTextStyle.aboutMeMoTextstyle(context),
          ),
          Constants.sizedBox(height: 5),
          Text(
            'In the ever-evolving realm of Flutter development, '
            'I firmly believe that adaptability is the key to staying at the forefront. '
            'I am a self-driven individual, constantly seeking to explore '
            'new technologies and embrace emerging trends. '
            'Embracing challenges, I actively pursue opportunities to expand my skill set.',
            textAlign: TextAlign.justify,
            maxLines: 8,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: AppTextStyle.aboutMeMoTextstyle(context),
          ),
          Constants.sizedBox(height: 5),
          Text(
            'Backed by a robust coding background and an unyielding determination, '
            'I am confident in my ability to make a positive contribution to any team. '
            'Let\'s unite and create something truly exceptional in the world of Flutter development!',
            maxLines: 8,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            softWrap: true,
            style: AppTextStyle.aboutMeMoTextstyle(context),
          ),
           Constants.sizedBox(height: 40),
           SizedBox(
            height: 100,
             child: Stack(
                          children:[
                            Newton(
                              // Add any kind of effects to your UI
                              // For example:
                              activeEffects: [
                                  RainEffect(
                                      particleConfiguration: ParticleConfiguration(
                                          shape: CircleShape(),
                                          size: const Size(5, 5),
                                          color: const SingleParticleColor(color: Colors.purple),
                                      ),
                                      effectConfiguration: const EffectConfiguration(),
                                  )
                              ],
                          ),
                          Center(
                            child: AnimatedTextKit(
                                   animatedTexts: [
                                     RotateAnimatedText('Flutter',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                     RotateAnimatedText('Dart',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                     RotateAnimatedText('Material-UI',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                     RotateAnimatedText('Git',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                     RotateAnimatedText('GitHub',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                     RotateAnimatedText('Firebase',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                     RotateAnimatedText('C++',
                                     textStyle: AppTextStyle.AaStyle(context),
                                     ),
                                   ],
                                   onTap: () {
                                     print("Tap Event");
                                   },
                                   repeatForever: true,
                                 ),
                          ),
                          ] 
                        ),
           ),
          
        ],
      ),
    );
  }
}
