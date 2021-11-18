import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.onChange,
      this.onSaved,
      this.validateFunction,
      this.keyBoardType,
      this.hint,
      this.label,
      this.prefixicons,
      this.suffixicons,
      this.controller,
      this.obscure = false})
      : super(key: key);
  final String? hint;
  final void Function(String)? onSaved, onChange;
  final String? label;
  final Icon? prefixicons;
  final Icon? suffixicons;
  final bool? obscure;
  final TextInputType? keyBoardType;

  final TextEditingController? controller;
  final FormFieldValidator<String>? validateFunction;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  String? error;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          keyboardType: widget.keyBoardType,
          onChanged: (val) {
            widget.validateFunction != null
                ? error = widget.validateFunction!(val)
                : error = null;
            setState(() {});
            widget.onChange!(val);
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            labelText: widget.label,
            labelStyle: GoogleFonts.montserrat(color: appPrimaryColor),
            hintStyle: AppTextStyles.smallgreyText,
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: appPrimaryColor),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            prefixIcon: widget.prefixicons,
            suffixIcon: widget.suffixicons,
          ),
          obscureText: widget.obscure!,
        ),
        if (error != null)
          Container(
            height: 5.0,
          )
        else
          Container(),
        if (error != null)
          Text(
            error!,
            style: const TextStyle(
              color: Colors.red,
            ),
          )
        else
          Container(),
        Container(
          height: 5,
        ),
      ],
    );
  }
}
