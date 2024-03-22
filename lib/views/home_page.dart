
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:my_portfollio/global/constants.dart';
import 'package:my_portfollio/global/size.dart';
import 'package:my_portfollio/widgets/projects_desktop.dart';
import 'package:my_portfollio/widgets/about_me_desktop.dart';
import 'package:my_portfollio/widgets/about_me_mobile.dart';
import 'package:my_portfollio/widgets/contact_me_desktop.dart';
import 'package:my_portfollio/widgets/contact_me_mobile.dart';
import 'package:my_portfollio/widgets/divider.dart';
import 'package:my_portfollio/widgets/drawer.dart';
import 'package:my_portfollio/widgets/header_desktop.dart';
import 'package:my_portfollio/widgets/header_mobile.dart';
import 'package:my_portfollio/widgets/main_desktop.dart';
import 'package:my_portfollio/widgets/main_mobile.dart';
import 'package:styled_divider/styled_divider.dart';
import '../global/app_text_style.dart';
import '../widgets/projects_mobile.dart';

class MiHomePage extends StatefulWidget {
   const MiHomePage({super.key, });

  @override
  State<MiHomePage> createState() => _MiHomePageState();
}

class _MiHomePageState extends State<MiHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>(); 
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // final screensize = MediaQuery.of(context).size;
    // final screenWidth = screensize.width;
    // final screenHeight = screensize.height;
    return LayoutBuilder(
      builder: (context, Constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: Constraints.maxWidth>= KminDesktopWidth ?null :  MiDrawer(
            
            navOnTapMenu: (int navIndex) {
              scaffoldKey.currentState?.closeEndDrawer();
              scrollToSection(navIndex);
            },
          ),
          body: 
        //  SingleChildScrollView(
           // scrollDirection: Axis.horizontal,
          //  controller: scrollController,
           // child: 
            Column(
              children: [
                SizedBox(key: navbarKeys.first),
                   if(Constraints.maxWidth>= KminDesktopWidth)
                     HeaderDesktop(navOnMenuTap: (int navIndex){
                     scrollToSection(navIndex);
                     } ,)
                    else
                    MobileHeader(onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                    onSiteTap: () {
                    },
                   ),
                   const MiDivder(),
                   // Constants.sizedBox(height: -2
               Expanded(
                  child:
                  ListView(
                    scrollDirection: Axis.vertical,
                    children:[
                     Column(
                      
                      children: [ if(Constraints.maxWidth>= KminDesktopWidth)
                                     MiMainDesktop()
                                    else
                                     MainMobile(),
                    Constants.sizedBox(height: 120),
                     const StyledDivider(
                    color: Colors.grey,
                      height: 50,
                      thickness: 1,
                      lineStyle: DividerLineStyle.dotted,
                      indent: 20,
                      endIndent: 20,
                                    ),
                     if (Constraints.maxWidth>= KminDesktopWidth)
                      AboutMeDesktop(key: navbarKeys[1],)
                     else  AboutMeMobile(key: navbarKeys[1],),
                     const StyledDivider(
                    color: Colors.grey,
                      height: 50,
                      thickness: 2,
                      lineStyle: DividerLineStyle.dotted,
                      indent: 20,
                      endIndent: 20,
                                    ),
                                     if(Constraints.maxWidth>= KminDesktopWidth)
                    ProjectsDesktop(key: navbarKeys[2],)
                                    else
                                     ProjectMobile(key: navbarKeys[2],),
                                     const StyledDivider(
                    color: Colors.grey,
                      height: 50,
                      thickness: 2,
                      lineStyle: DividerLineStyle.dotted,
                      indent: 20,
                      endIndent: 20,
                                    ),
                    if (Constraints.maxWidth>= KminDesktopWidth)
                     ContactMeDesktop(key: navbarKeys[3],)
                     else  ContactMeMobile(key: navbarKeys[3],),
                     Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 20, ),
                      alignment: Alignment.center,
                      child: Text("Built with love by Adetayo",
                      style:  AppTextStyle.headerStyle(context)
                      ),
                     )
                      ]
                    ),
                    ] 
                  ),
               ),
              ],
            ),
         // ),
        );
      }
    );
  }
  void scrollToSection (int navIndex){


      final Key = navbarKeys[navIndex];
      Scrollable.ensureVisible(
        Key.currentContext!,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut
      );
  }

 
}

//rd,grn,bu