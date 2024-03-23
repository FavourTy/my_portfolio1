import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfollio/widgets/profile_link.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../global/app_text_style.dart';
import '../global/constants.dart';

class ContactMeMobile extends StatelessWidget {
  const ContactMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      constraints: const BoxConstraints(minHeight: 300.0),
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GradientText(
                'shoot me a message 📥',
                style:  AppTextStyle.pTextStyle(context),
                gradientType: GradientType.linear,
                radius: 2.5,
                colors: const [
                  Colors.blue,
                   Colors.yellow,
                  Colors.purple,
                ],
              ),
          Constants.sizedBox(height: 30),
          Text(
            'Thanks for stopping by! '
            'I\'m always on the lookout for new and exciting opportunities. '
            ' If you\'re interested in learning more about my work or have an opportunity you\'d like to discuss, '
            'feel free to reach out. Let\'s chat about how we can bring your project to life!',
            style: AppTextStyle.headerTextStyle(context),
            maxLines: 7,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            softWrap: true,
          ),
          Constants.sizedBox(height: 30),
          const ProfileLink(),
        ],
      ),
    );
  }
}
