import 'package:flutter/material.dart';
import 'package:my_portfollio/global/app_text_style.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "Adetayo",
        style: AppTextStyle.nameTextstyle(context),
      ),
    );
  }
}
