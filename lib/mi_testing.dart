
import 'package:adaptive_screen_utils/adaptive_screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:my_portfollio/widgets/header_mobile.dart';
import 'package:styled_divider/styled_divider.dart';
import 'global/app_text_style.dart';
import 'global/constants.dart';
import 'widgets/about_me_desktop.dart';
import 'widgets/about_me_mobile.dart';
import 'widgets/contact_me_desktop.dart';
import 'widgets/contact_me_mobile.dart';
import 'widgets/divider.dart';
import 'widgets/drawer.dart';
import 'widgets/header_desktop.dart';
import 'widgets/main_desktop.dart';
import 'widgets/main_mobile.dart';
import 'widgets/projects_desktop.dart';
import 'widgets/projects_mobile.dart';

class MiTesting extends StatefulWidget {
  const MiTesting({super.key});

  @override
  State<MiTesting> createState() => _MiTestingState();
}

class _MiTestingState extends State<MiTesting> {
   final scaffoldKey = GlobalKey<ScaffoldState>(); 
  @override
  Widget build(BuildContext context) {
    final desktop = expanded(context);
    final tablet = medium(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
           key: scaffoldKey,
          endDrawer: desktop ?null :  MiDrawer(
            
            navOnTapMenu: (int navIndex) {
              scaffoldKey.currentState?.closeEndDrawer();
              
            },
          ),
          body: Column(
              children: [
                   if(desktop)
                     HeaderDesktop(navOnMenuTap: (int navIndex){
                     
                     } ,)
                    else if (tablet)
                    HeaderDesktop(navOnMenuTap:(int navIndex){
                     
                     } )
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
                      
                      children: [ if(desktop)
                                     const MiMainDesktop()
                                    else if (tablet)
                                    const MiMainDesktop()
                                    else
                                     const MainMobile(),
                    Constants.sizedBox(height: 120),
                     const StyledDivider(
                    color: Colors.grey,
                      height: 50,
                      thickness: 1,
                      lineStyle: DividerLineStyle.dotted,
                      indent: 20,
                      endIndent: 20,
                                    ),
                     if (desktop)
                      const AboutMeDesktop() 
                     else if (tablet)   const AboutMeDesktop() 
                    else const AboutMeMobile(),
                     const StyledDivider(
                    color: Colors.grey,
                      height: 50,
                      thickness: 2,
                      lineStyle: DividerLineStyle.dotted,
                      indent: 20,
                      endIndent: 20,
                                    ),
                                     if(desktop)
                    const ProjectsDesktop()
                                    else if (tablet) const ProjectsDesktop()
                                      else const ProjectMobile(),
                                     const StyledDivider(
                    color: Colors.grey,
                      height: 50,
                      thickness: 2,
                      lineStyle: DividerLineStyle.dotted,
                      indent: 20,
                      endIndent: 20,
                                    ),
                    if (desktop)
                     const ContactMeDesktop()
                     else if (tablet)  const ContactMeDesktop()
                     else
                     const ContactMeMobile(),
                     Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(horizontal: 20, ),
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
        );
       
      },
    );
  }
}