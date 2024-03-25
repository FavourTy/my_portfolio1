import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../global/app_text_style.dart';
import '../global/constants.dart';
import '../global/nav_items.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key, required this.navOnTapMenu});
  final Function(int) navOnTapMenu;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Icon(Icons.close),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              leading: Container(
                width: 15,
                height: 20,
                child: Image.asset(navIcons[i] )),
              title: InkWell(
                onTap: () {
                  navOnTapMenu(i);
                },
                child: AnimatedTextKit(animatedTexts: [
                  ColorizeAnimatedText(navTites[i],
                      textStyle: AppTextStyle.headerTextStyle(context),
                      colors: [Colors.pink, Colors.blue, Colors.purple]),
                ], repeatForever: true),
              ),
            ),
          Constants.sizedBox(width: 30),
        ],
      ),
    );
  }
}
