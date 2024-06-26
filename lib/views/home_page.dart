
// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:my_portfollio/global/appAssets.dart';
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

// class MiHomePage extends StatefulWidget {
//    const MiHomePage({super.key, });

//   @override
//   State<MiHomePage> createState() => _MiHomePageState();
// }

// class _MiHomePageState extends State<MiHomePage> {
//   final scaffoldKey = GlobalKey<ScaffoldState>(); 
//   final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

//   final ScrollController scrollController = ScrollController();

// void scrollToSection(int navIndex) {
//     final GlobalKey key = navbarKeys[navIndex];
//     if (key.currentContext != null) {
//       Scrollable.ensureVisible(
//         key.currentContext!,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       print('The key context is not available.');
//     }
//   }
//   //  void scrollToSection(int navIndex) {
    
//   //   final context = navbarKeys[navIndex].currentContext;
//   //   if (context != null) {
//   //     Scrollable.ensureVisible(
//   //       context,
//   //       duration: const Duration(milliseconds: 500),
//   //       curve: Curves.easeInOut,
        
//   //     );
//   //   }
//   // }
//   @override
//   Widget build(BuildContext context) {
//     // final screensize = MediaQuery.of(context).size;
//     // final screenWidth = screensize.width;
//     // final screenHeight = screensize.height;
//     return LayoutBuilder(
//       builder: (context, Constraints) {
//         return Scaffold(
//           key: scaffoldKey,
//           endDrawer: Constraints.maxWidth>= KminDesktopWidth ?null :  MiDrawer(
//             navOnTapMenu: (int navIndex) {
//               scaffoldKey.currentState?.closeEndDrawer();
//               scrollToSection(navIndex);
//             },
//           ),
//           body: 
//             Column(
//                 children: [
//                   // SizedBox(key: navbarKeys.first),
//                      if(Constraints.maxWidth>= KminDesktopWidth)
//                        HeaderDesktop(navOnMenuTap: (int navIndex){
//                        scrollToSection(navIndex);
//                        } ,
//                        key: navbarKeys[0],
//                        )
//                       else
//                       MobileHeader(onMenuTap: () {
//                         scaffoldKey.currentState?.openEndDrawer();
//                       },
//                       onSiteTap: () {
//                       },
//                       key: navbarKeys[0],
//                      ),
//                      const MiDivder(),
//                  Expanded(
//                    child: SingleChildScrollView(
//                     controller: scrollController,
//                     scrollDirection: Axis.vertical,
//                    child:
//                     Padding(
//                       padding: const EdgeInsets.all(10.0),
//                       child: Column(
                       
//                        children: [ if(Constraints.maxWidth>= KminDesktopWidth)
//                                       const MiMainDesktop()
//                                      else
//                                       const MainMobile(),
//                                             Constants.sizedBox(height: 120),
//                       const StyledDivider(
//                                             color: Colors.grey,
//                        height: 50,
//                        thickness: 1,
//                        lineStyle: DividerLineStyle.dotted,
//                        indent: 20,
//                        endIndent: 20,
//                                      ),
//                       if (Constraints.maxWidth>= KminDesktopWidth)
//                        AboutMeDesktop(key: navbarKeys[1],)
//                       else  AboutMeMobile(key: navbarKeys[1],),
//                       const StyledDivider(
//                                             color: Colors.grey,
//                        height: 50,
//                        thickness: 2,
//                        lineStyle: DividerLineStyle.dotted,
//                        indent: 20,
//                        endIndent: 20,
//                                      ),
//                                       if(Constraints.maxWidth>= KminDesktopWidth)
//                                             ProjectsDesktop(key: navbarKeys[2],)
//                                      else
//                                       ProjectMobile(key: navbarKeys[2],),
//                                       const StyledDivider(
//                                             color: Colors.grey,
//                        height: 50,
//                        thickness: 2,
//                        lineStyle: DividerLineStyle.dotted,
//                        indent: 20,
//                        endIndent: 20,
//                                      ),
//                                             if (Constraints.maxWidth>= KminDesktopWidth)
//                       ContactMeDesktop(key: navbarKeys[3],)
//                       else  ContactMeMobile(key: navbarKeys[3],),
//                       Container(
//                        width: double.maxFinite,
//                        padding: const EdgeInsets.symmetric(horizontal: 20, ),
//                        alignment: Alignment.center,
//                        child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                          children: [
//                            Text("Built with ",
//                            style:  AppTextStyle.headerStyle(context)
//                            ),
//                            SizedBox(
//                              width: 20,
//                              height: 20,
//                              child: Image.asset(AppAsset.loveEmoji,
//                              ),
//                            ),
//                            Text(" by Adetayo",
//                             style:  AppTextStyle.headerStyle(context)
//                            )
//                          ],
//                        ),
//                       )
//                        ]
//                                             ),
//                     ),
                   
//                                        ),
//                  ),
//                 ],
//               ),
            
//          // ),
//         );
//       }
//     );
//   }

 
// }

// //rd,grn,bu

class MiHomePage extends StatefulWidget {
  const MiHomePage({super.key});

  @override
  State<MiHomePage> createState() => _MiHomePageState();
}

class _MiHomePageState extends State<MiHomePage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  void scrollToSection(int navIndex) {
    final GlobalKey key = navbarKeys[navIndex];
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      print('The key context is not available for section $navIndex.');
    }
  }

  @override
  Widget build(BuildContext context) {
  
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= KminDesktopWidth ? null : MiDrawer(
            navOnTapMenu: (int navIndex) {
              scaffoldKey.currentState?.closeEndDrawer();
              scrollToSection(navIndex);
            },
          ),
          body: Column(
            children: [
              if (constraints.maxWidth >= KminDesktopWidth)
                HeaderDesktop(
                  navOnMenuTap: scrollToSection,
                  key: navbarKeys[0],
                )
              else
                MobileHeader(
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                  key: navbarKeys[0],
                ),
              const MiDivder(),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        if (constraints.maxWidth >= KminDesktopWidth)
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
                        if (constraints.maxWidth >= KminDesktopWidth)
                          AboutMeDesktop(key: navbarKeys[1])
                        else
                          AboutMeMobile(key: navbarKeys[1]),
                        const StyledDivider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 2,
                          lineStyle: DividerLineStyle.dotted,
                          indent: 20,
                          endIndent: 20,
                        ),
                        if (constraints.maxWidth >= KminDesktopWidth)
                          ProjectsDesktop(key: navbarKeys[2])
                        else
                          ProjectMobile(key: navbarKeys[2]),
                        const StyledDivider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 2,
                          lineStyle: DividerLineStyle.dotted,
                          indent: 20,
                          endIndent: 20,
                        ),
                        if (constraints.maxWidth >= KminDesktopWidth)
                          ContactMeDesktop(key: navbarKeys[3])
                        else
                          ContactMeMobile(key: navbarKeys[3]),
                        Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Built with ",
                                style: AppTextStyle.headerStyle(context),
                              ),
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset(AppAsset.loveEmoji),
                              ),
                              Text(
                                " by Adetayo",
                                style: AppTextStyle.headerStyle(context),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
