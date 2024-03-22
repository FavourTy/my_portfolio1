import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfollio/global/app_text_style.dart';
import 'package:my_portfollio/global/constants.dart';
import 'package:my_portfollio/widgets/profile_link.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactState();
}

class _ContactState extends State<ContactMe> {
  @override
  Widget build(BuildContext context) {
     final Size size = MediaQuery.of(context).size;
    return SizedBox(
       height: size.height,
      width:  size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           RichText(text:  TextSpan(text: "shoot ",  style: GoogleFonts.lobster(color: Colors.purple,fontSize: 30),
               children:  [
                const TextSpan(text: " ",),
                TextSpan(text: "me", style:GoogleFonts.lobster(color: Colors.blue,fontSize: 30) ),
               const TextSpan(text: " "),
               TextSpan(text: "a",  style: GoogleFonts.lobster(color: Colors.pink,fontSize: 30)),
               const TextSpan(text: " ",),
                const TextSpan(text: "message", style: TextStyle(color: Colors.yellow),
                
               ),
               const TextSpan(text: " ",),
               const TextSpan(text: "📥", style: TextStyle(color: Colors.yellow),)
               ]
               ),
               
               ),
               Constants.sizedBox(height: 50),
               Text('Thanks for stopping by!'
                'I\'m always on the lookout for new and exciting opportunities. '
               ' If you\'re interested in learning more about my work or have an opportunity you\'d like to discuss, '
                'feel free to reach out. Let\'s chat about how we can bring your project to life!',
                style: AppTextStyle.headerTextStyle(context), 
                ),
                 Constants.sizedBox(height: 50),
                 const ProfileLink(),
        ],
      ),
    );
  }
}