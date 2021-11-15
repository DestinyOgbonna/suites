import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {Key? key,
      this.hint,
      this.label,
      this.prefixicons,
      this.suffixicons,
      this.controller,
      this.obscure = false})
      : super(key: key);
  String? hint;
  String? label;
  Icon? prefixicons;
  Icon? suffixicons;
  bool obscure;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: GoogleFonts.montserrat(color: appPrimaryColor),
        hintStyle: AppTextStyles.smallgreyText,
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
