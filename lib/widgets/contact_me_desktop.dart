import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../global/appAssets.dart';
import '../global/app_text_style.dart';
import '../global/constants.dart';
import 'profile_link.dart';

class ContactMeDesktop extends StatelessWidget {
  const ContactMeDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    // final screenHeight = screensize.height;
    return Container(
      height: 370,
      width: screenWidth,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              
                  GradientText(
                        'shoot me a message ',
                        style:  AppTextStyle.pTextStyle(context),
                        gradientType: GradientType.radial,
                        radius: 2.5,
                        colors: const [
                          Colors.blue,
                           Colors.yellow,
                          Colors.purple,
                        ],
                      ),
                       Container(
                        width: 55,
                            height: 70,
                        child: Image.asset(AppAsset.inbox),
                      )
                
                   
            ],
          ),
          Constants.sizedBox(height: 50),
          Text(
            'Thanks for stopping by!'
            'I\'m always on the lookout for new and exciting opportunities. '
            ' If you\'re interested in learning more about my work or have an opportunity you\'d like to discuss, '
            'feel free to reach out. Let\'s chat about how we can bring your project to life!',
            style: AppTextStyle.headerTextStyle(context),
          ),
          Constants.sizedBox(height: 50),
          const ProfileLink(),
        ],
      ),
    );
  }
}
