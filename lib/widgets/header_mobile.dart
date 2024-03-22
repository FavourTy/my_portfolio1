import 'package:flutter/material.dart';
import 'package:my_portfollio/global/constants.dart';
import 'package:my_portfollio/widgets/appMode.dart';
import 'site_logo.dart';

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key, this.onSiteTap, this.onMenuTap});
  final VoidCallback? onSiteTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
      child: Row(
        children: [
          SiteLogo(
            onTap: onSiteTap,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AppMode(),
              Constants.sizedBox(width: 15),
              GestureDetector(
                onTap: onMenuTap,
                child: const Icon(Icons.menu),
              ),
              // IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu),

              // ),
              // Constants.sizedBox(width: 15),
            ],
          ),
        ],
      ),
    );
  }
}
