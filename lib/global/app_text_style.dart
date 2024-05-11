import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyle {
  static TextStyle headerTextStyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 15.sp,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle aboutMeMoTextstyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 15.sp,
      // letterSpacing: 1.5,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle aboutMeDeTextstyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 18.sp,
      // letterSpacing: 1.5,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle getMeTextstyle(BuildContext context) {
    return GoogleFonts.lobster(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle aboutMyTextstyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle nameTextstyle(BuildContext context) {
    return GoogleFonts.rubikMoonrocks(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle bodyTextStyle(BuildContext context) {
    return GoogleFonts.lobster(
      fontSize: 42.sp,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle headerStyle(BuildContext context) {
    return GoogleFonts.rubik(
        fontWeight: FontWeight.w500,
        fontSize: 15.sp,
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.black
            : Colors.white);
  }

  static TextStyle blueUnderlinedStyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 18.5.sp,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.purple,
      decorationThickness: 2.0,
    );
  }

  static TextStyle linkTextstyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 20.sp,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.purple,
      decorationThickness: 2.0,
    );
  }

  static TextStyle splashStyle() {
    return GoogleFonts.rubik(
      fontSize: 70.sp,
      color: Colors.white,
    );
  }

  static TextStyle pTextStyle(BuildContext context) {
    return GoogleFonts.lobster(
      fontSize: 30.sp,
      fontWeight: FontWeight.w200,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }

  static TextStyle profileLinkStyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontSize: 15.sp,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.purple
          : Colors.pink,
    );
  }

  static TextStyle aaStyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.w500,
      fontSize: 40.sp,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.purple
          : Colors.pink,
    );
  }

  static TextStyle spStyle(BuildContext context) {
    return GoogleFonts.rubik(
      fontWeight: FontWeight.bold,
      fontSize: 60.sp,
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.black
          : Colors.white,
    );
  }
}
