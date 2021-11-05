import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suites/constants/appcolors.dart';

class AppTextStyles {
  static TextStyle whiteText = GoogleFonts.montserrat(
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: appWhiteColor,
  );

  static TextStyle smallblueText = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: appPrimaryColor,
  );

  static TextStyle boldBlueText = GoogleFonts.montserrat(
    fontSize: 23,
    fontWeight: FontWeight.w600,
    color: appPrimaryColor,
  );
  static TextStyle blackText = GoogleFonts.montserrat(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: appBlackColor,
  );
  static TextStyle smallblackText = GoogleFonts.montserrat(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: appBlackColor,
  );
  static TextStyle smallgreyText = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: appGreyColor,
  );

  static TextStyle headerText = GoogleFonts.rakkas(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: appPrimaryColor,
  );
}
