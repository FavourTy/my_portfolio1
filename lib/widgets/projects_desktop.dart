// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfollio/global/appAssets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../global/app_text_style.dart';
import '../global/constants.dart';
import 'dart:js' as js;

// Assuming you have a Project class like this
class Project {
  final String title;
  final String misubtitle;
  final String mitechnologies;
  final String migithublink;
  Project({
    required this.title,
    required this.misubtitle,
    required this.mitechnologies,
    required this.migithublink,
  });
}

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProjectsDesktopState createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  // Example list of projects
  final List<Project> projects = [
    Project(
      title: 'My Portfolio',
      misubtitle:
          'Developed a dynamic and interactive portfolio website showcasing my projects, skills, and professional journey. The website offers visitors a comprehensive view of my accomplishments and areas of expertise, with a user-friendly interface and responsive design',
      mitechnologies: "Flutter-web, Dart, Material-UI",
      migithublink: "https://github.com/FavourTy/my_portfolio",
    ),
    Project(
      title: 'Ocr App',
      misubtitle:
          'Created an Optical Character Recognition (OCR) application that allows users to extract text from images and documents. The app features an intuitive interface and provides accurate text recognition, making it easy for users to digitize documents on the go.',
      mitechnologies: "Flutter, OCR, Dart, Firebase, Material-UI",
      migithublink: "https://github.com/FavourTy/ocr_app",
    ),
    Project(
      title: 'Meal App',
      misubtitle:
          'Developed a comprehensive meal planning and recipe app that helps users discover new recipes, plan their meals, and track their nutritional intake. The app includes features like shopping lists, meal schedules, and personalized recipe recommendations.',
      mitechnologies: "Flutter, Dart, Material-UI",
      migithublink: "https://github.com/FavourTy/meals_app",
    ),
    Project(
      title: 'Expense App',
      misubtitle:
          'Built a personal finance and expense tracking application that allows users to monitor their spending, set budgets, and visualize their financial habits through charts and graphs. The app provides insights to help users manage their finances more effectively.',
      mitechnologies: "Flutter,Dart, Firebase, Material-UI",
      migithublink: "https://github.com/FavourTy/expense_app",
    ),
    Project(
      title: 'Chrome Extension',
      misubtitle:
          'I Developed a Chrome extension to enhance browsing efficiency and productivity. The extension offers features like quick links, website blocking, and custom reminders, tailored to improve the user\'s web experience.',
      mitechnologies: "Flutter, Dart, Material-UI",
      migithublink: "https://github.com/FavourTy/flutter_chrome_extension",
    ),
    //Project(title: 'My Portfolio', misubtitle: 'A personal portfolio app with cool animations showcasing projects, skills, and contact information.',mitechnologies: "Flutter, Dart, Firebase, Material-UI", migithublink: "github"),
    Project(
      title: 'Cgpa Calculator',
      misubtitle:
          'Created a CGPA (Cumulative Grade Point Average) calculator app designed for students to easily calculate and track their academic performance. The app supports customizable grading scales and provides historical data visualization.',
      mitechnologies: "Flutter, Dart,firebase Material-UI",
      migithublink: "https://github.com/FavourTy/fuoye_cgpa_calculator",
    ),
    Project(
      title: 'Smart Traffic Monitoring System',
      misubtitle:
          ' Developed an innovative smart traffic monitoring system that leverages real-time data analysis to optimize traffic flow and reduce congestion. The system includes features for vehicle detection, traffic pattern analysis, and automated signal control.',
      mitechnologies: "Flutter, Dart,python,sql-lite,Material-UI",
      migithublink: "https://github.com/FavourTy/traffic_monitoring_system-",
    ),
    // Add more projects as needed
  ];

  // Variable to track the currently selected project
  Project? selectedProject;

  @override
  void initState() {
    super.initState();
    // Initialize the selected project with the first one by default
    if (projects.isNotEmpty) {
      selectedProject = projects.first;
    }
  }

  String selectedLink = '';

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    final screenWidth = screensize.width;
    // final screenHeight = screensize.height;
    return Container(
      width: screenWidth,
      height: 500,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              GradientText(
                    'My dev dishes ',
                    style:  AppTextStyle.pTextStyle(context),
                    gradientType: GradientType.linear,
                    radius: 2.5,
                    colors: const [
                    Colors.blue,
                       Colors.yellow,
                      Colors.purple,
                    ],
                  ),
                  Container(
                        width: 55,
                            height: 85,
                        child: Image.asset(AppAsset.chef),
                      )
            ],
          ),
         //  text: "", style: TextStyle(color: Colors.yellow)),
          Constants.sizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row for the list of projects
              //SingleChildScrollView(
              // scrollDirection: Axis.vertical,
              //child:
              //),
              // Row/Container for the details of the selected project
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  // alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        selectedProject?.title ??
                            'Select a project to see details',
                        style: AppTextStyle.pTextStyle(context),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 1,
                            height: 160,
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Colors.pink, Colors.blue],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )),
                            child: const VerticalDivider(
                              width: 2,
                              color: Colors.transparent,
                              indent: 10,
                              endIndent: 10,
                              thickness: 2,
                            ),
                          ),
                          Constants.sizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.5,
                                child: Text(
                                  selectedProject?.misubtitle ??
                                      'Select a project to see details',
                                  // maxLines: 5,
                                  //  overflow: TextOverflow.ellipsis,
                                  //  softWrap: true,

                                  textAlign: TextAlign.start,
                                  style: AppTextStyle.headerTextStyle(context),
                                ),
                              ),
                              Constants.sizedBox(height: 20),
                              Row(
                                children: [
                                   Container(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset(AppAsset.toolbox),
                                  ),
                                  Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(AppAsset.hammer),
                                  ),
                                  Constants.sizedBox(width: 5),
                                  Text(
                                    selectedProject?.mitechnologies ??
                                        'Select a project to see details',
                                    style:
                                        AppTextStyle.headerTextStyle(context),
                                  ),
                                ],
                              ),
                              Constants.sizedBox(height: 20),
                              GestureDetector(
                                  onTap: () {
                                    js.context.callMethod("open", [
                                      selectedProject?.migithublink ??
                                          'Select a project to see details'
                                    ]);
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        "Github",
                                        style:
                                            AppTextStyle.headerTextStyle(context),
                                      ),
                                      Container(
                                      height: 1,
                                      width: 55,
                                      decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(5),
                                         gradient: const LinearGradient(
                                          end: Alignment.centerRight,
                                          stops: [0.2, 1],
                                          colors:[Colors.blue, Colors.yellow]  )
                                      
                                      ),
                                                                        )
                                    ],
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ), //
              //Expanded(child:
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Projects",
                      style: AppTextStyle.pTextStyle(context),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 1,
                          height: 250,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(
                            colors: [Colors.yellow, Colors.blue],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )),
                          child: const VerticalDivider(
                            width: 1,
                            color: Colors.transparent,
                            indent: 10,
                            endIndent: 10,
                            thickness: 2,
                          ),
                        ),
                        Constants.sizedBox(width: 5),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: projects
                              .map((project) => GestureDetector(
                                    onTap: () => setState(() {
                                      selectedProject = project;
                                    }),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                       
                                                   Text(
                                                    project.title,
                                                    style: AppTextStyle.headerTextStyle(
                                                        context),
                                                  ),
                                                
  
                                          Container(
                                      height: 1,
                                      width: project.title.characters.length.toDouble()*8,
                                      decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(5),
                                         gradient: const LinearGradient(
                                          end: Alignment.centerRight,
                                          stops: [0.2, 1],
                                          colors:[Colors.blue, Colors.yellow]  )
                                      
                                      ),
                                      )
                                        ],
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ],
                    )
                  ],
                ),
              )
              // )//
            ],
          ),
        ],
      ),
    );
  }
}
