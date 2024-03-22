// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:my_portfollio/global/app_text_style.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileLink extends StatefulWidget {
  const ProfileLink({super.key});

  @override
  State<ProfileLink> createState() => _ProfileLinkState();
}

class _ProfileLinkState extends State<ProfileLink> {
  String selectedLink = '';
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildClickableRow("Twitter", 'https://twitter.com/favvyhn'),
        buildClickableRow("Github", 'https://github.com/favourTy'),
        buildClickableRow( "Linkedln", 'https://www.linkedin.com/in/adeyemi-favour-adetayo'),
        buildClickableRow("Mail", 'mailto:@favouradetayo03@gmail.com'),
      ],
    );
  }

  Widget buildClickableRow(String text, String url) {
    return InkWell(
      onTap: () {
        // ignore:
        launch(url);
      },
      onHover: (isHovered) {
        setState(() {
          selectedLink = isHovered ? url : '';
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(text,
              style: url == selectedLink
                  ? AppTextStyle.ProfilelinkStyle()
                  : AppTextStyle.headerStyle(context)
              // style: AppTextStyle.headerStyle(context)
              // color: url == selectedLink ? Colors.purple : Colors.white,
              //  decoration: url == selectedLink ? TextDecoration.underline : TextDecoration.none,
              ),
          if (url == selectedLink)
            const Divider(thickness: 3, color: Colors.purple),
        ],
      ),
    );
  }

  Widget cRow({required String text, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(text, style: AppTextStyle.headerStyle(context)),
      ),
    );
  }

  // ignore: unused_element
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
