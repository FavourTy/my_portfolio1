import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:my_portfollio/global/appAssets.dart';
import 'package:my_portfollio/global/app_text_style.dart';
import 'package:my_portfollio/global/constants.dart';
//import 'package:my_portfollio/views/homepage.dart';


class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  
  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
       
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
               RichText(text:  TextSpan(text: "Get",  style: GoogleFonts.lobster(color: Colors.white,fontSize: 30),
                  children: [
                   const TextSpan(text: " ",),
                   TextSpan(text: "to", style:GoogleFonts.lobster(color: Colors.pink,fontSize: 30) ),
                  const TextSpan(text: " "),
                  TextSpan(text: "know",  style: GoogleFonts.lobster(color: Colors.blue,fontSize: 30)),
                  const TextSpan(text: " ",),
                  TextSpan(text: "me",  style: GoogleFonts.lobster(color: Colors.purple,fontSize: 30)),
                  const TextSpan(text: " ",),
                   const TextSpan(text: "😄", 
                  ),
                  ]
                  ),
                  
                  ),
                   Constants.sizedBox(height: 30),
          Expanded(
              child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.start,
                children: [

                   Expanded(
                     child: Column(
                       children: [
                         Text(
                                     'In the ever-evolving realm of Flutter development, '
                                     'I firmly believe that adaptability is the key to staying at the forefront. '
                                     'I am a self-driven individual, constantly seeking to explore '
                                     'new technologies and embrace emerging trends. '
                                     'Embracing challenges, I actively pursue opportunities to expand my skill set.',
                                     textAlign: TextAlign.justify,
                                     maxLines: 5,
                                     overflow: TextOverflow.ellipsis,
                                     softWrap: true,
                                      style: AppTextStyle.aboutMeTextstyle(context),
                           ),
                            Text(
                                 'Backed by a robust coding background and an unyielding determination, '
                                 'I am confident in my ability to make a positive contribution to any team. '
                                 'Let\'s unite and create something truly exceptional in the world of Flutter development!',
                                 maxLines: 5,
                                 overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                 softWrap: true,
                                  style: AppTextStyle.aboutMeTextstyle(context),
                       ),
                         Text(
                       "Hello! I'm Adetayo, a passionate Flutter developer "
                       "recognized for adding a touch of enchantment to my code. "
                       "I specialize in crafting outstanding applications and am enthusiastic "
                       "about collaborating with bright minds in the Flutter development "
                       "community to enhance my continuous learning journey.",
                       maxLines: 5,
                       overflow: TextOverflow.ellipsis,
                       
                       softWrap: true,
                      textAlign: TextAlign.justify,
                       style: AppTextStyle.aboutMeTextstyle(context),
                                    ),
                                   
                       ],
                     ),
                   ),
                   const Expanded(child: SizedBox())   
                ],
              ),
            ),
       ],
        ),
      ),
    );
  }

  Widget buildColoredText(String text, Color color) {
    return RichText(
      text: TextSpan(
        text: text,
        style: AppTextStyle.getMeTextstyle(context)
      ),
    );
  }
}