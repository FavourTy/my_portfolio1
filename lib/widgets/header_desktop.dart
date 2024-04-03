import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_portfollio/global/app_text_style.dart';
import 'package:my_portfollio/global/constants.dart';
import 'package:my_portfollio/global/nav_items.dart';
import 'package:my_portfollio/widgets/appMode.dart';
import 'package:my_portfollio/widgets/main_desktop.dart';
import 'package:my_portfollio/widgets/site_logo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.navOnMenuTap});
  final Function(int) navOnMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      height: 40.0,
      width: double.maxFinite,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          
         for (int i = 0; i < navTites.length; i++)
            TextButton(
              onPressed: () {
               navOnMenuTap(i);
             },
              child: AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText(navTites[i],
                    textStyle: AppTextStyle.headerTextStyle(context),
                   colors: [Colors.pink, Colors.blue, Colors.purple]),
              ], repeatForever: true),
           ),
          Constants.sizedBox(width: 30),
          const AppMode()
        ],
      ),
    );
  }
}
