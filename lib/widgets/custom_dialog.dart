import 'package:flutter/material.dart';


import 'package:stacked_services/stacked_services.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

class CustomDialog extends StatelessWidget {
  final DialogRequest request;
  final Function(DialogResponse) completer;
  final String title;

  const CustomDialog(
      {Key? key,
      required this.request,
      required this.completer,
      required this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
        title: Text(
          title,
          style: AppTextStyles.smallblackText,
        ),
        content: const SizedBox(
          height: 60,
          width: 30,
          child:  Center(
            child: CircularProgressIndicator(
              color:appPrimaryColor,
            ),
          ),
        ),
       
      ),
    );
  }
}
