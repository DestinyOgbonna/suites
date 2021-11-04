import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suites/constants/appcolors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hint,
      this.label,
      this.prefixicons,
      this.suffixicons,
      this.obscure = false})
      : super(key: key);
  String? hint;
  String? label;
  Icon? prefixicons;
  Icon? suffixicons;
  bool obscure;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: GoogleFonts.montserrat(color: appPrimaryColor),
        hintStyle: GoogleFonts.montserrat(),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: appPrimaryColor),
            borderRadius: BorderRadius.circular(10)),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        prefixIcon: prefixicons,
        suffixIcon: suffixicons,
      ),
      obscureText: obscure,
    );
  }
}
