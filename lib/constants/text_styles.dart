import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suites/constants/appcolors.dart';

class AppTextStyles {
  static TextStyle whiteText = GoogleFonts.almarai(
    fontSize: 19,
    fontWeight: FontWeight.w600,
    color: appWhiteColor,
  );

  static TextStyle smallblueText = GoogleFonts.almarai(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: appPrimaryColor,
  );
  static TextStyle smallerblueText = GoogleFonts.almarai(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: appPrimaryColor,
  );

  static TextStyle boldBlueText = GoogleFonts.almarai(
    fontSize: 25,
    fontWeight: FontWeight.w800,
    color: darkerBlue,
  );
  static TextStyle subHeadText = GoogleFonts.almarai(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: appPrimaryColor,
  );
  static TextStyle blackText = GoogleFonts.almarai(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: darkerBlue,
  );
  static TextStyle smallblackText = GoogleFonts.almarai(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: darkerBlue,
  );
  static TextStyle smallgreyText = GoogleFonts.almarai(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: appGreyColor,
  );
  static TextStyle mediumgreyText = GoogleFonts.almarai(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: appGreyColor,
  );
  static TextStyle mediumBlueText = GoogleFonts.almarai(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: darkerBlue,
  );

  static TextStyle headerText = GoogleFonts.almarai(
    fontSize: 30,
    fontWeight: FontWeight.w800,
    color: appPrimaryColor,
  );
}
