import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppTextStyle{
  static TextStyle headerTextStyle (BuildContext context){
    return GoogleFonts.rubik(fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
     );
  
  }
  
  static TextStyle aboutMeTextstyle (BuildContext context){
    return GoogleFonts.rubik(fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
     );
  
  }

  static TextStyle getMeTextstyle (BuildContext context){
    return GoogleFonts.lobster(fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
     );
  }

  static TextStyle aboutMyTextstyle (BuildContext context){
    return GoogleFonts.rubik(fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
     );
  
  }
   static TextStyle nameTextstyle (BuildContext context){
    return GoogleFonts.rubikMoonrocks(fontSize: 20,
    fontWeight: FontWeight.w700,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
    
     );
  
  }
 static TextStyle bodyTextStyle(BuildContext context){
 return GoogleFonts.lobster(
  
    fontSize: 42,
     fontWeight: FontWeight.w700,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
  
  );
 }

 static TextStyle headerStyle(BuildContext context){
  return GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white
  );
 }
 
 static TextStyle blueUnderlinedStyle (BuildContext context) {
return GoogleFonts.rubik(
  fontSize:  18.5,
  color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
 decoration: TextDecoration.underline,
  decorationColor: Colors.purple,
  decorationThickness: 2.0,
);
 } 
static TextStyle linkTextstyle (BuildContext context){
    return GoogleFonts.rubik(fontSize: 20,
    fontWeight: FontWeight.w700,
     color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
    decoration: TextDecoration.underline,
     decorationColor: Colors.purple, 
     decorationThickness: 2.0,
    
     );
 
}
static TextStyle splashStyle () {
return GoogleFonts.rubik(
  fontSize:  70,
  color: Colors.white,
);
 } 

 static TextStyle pTextStyle(BuildContext context){
 return GoogleFonts.lobster(
    fontSize: 37,
     fontWeight: FontWeight.w700,
    color: Theme.of(context).brightness == Brightness.light ? Colors.black : Colors.white,
  
  );
 }

 static TextStyle ProfilelinkStyle(){
  return GoogleFonts.rubik(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: Colors.purple
  );
 }

 static TextStyle AaStyle(BuildContext context){
  return GoogleFonts.rubik(
    fontWeight: FontWeight.w500,
    fontSize: 40,
     color: Theme.of(context).brightness == Brightness.light ? Colors.purple : Colors.pink,
  );
 }
 
}

