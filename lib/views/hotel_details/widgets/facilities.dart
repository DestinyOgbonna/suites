import 'package:flutter/material.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

// ignore: must_be_immutable
class Facilities extends StatelessWidget {
  Icon icon;
  String facilityType;
  Facilities({Key? key, required this.facilityType, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, left: 10),
      height: 30,
      width: 80,
      decoration: BoxDecoration(
          color: darkerBlue,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0.5, 0.5),
                spreadRadius: 0,
                blurRadius: 5,
                color: appGreyColor)
          ]),
      child: Row(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              facilityType,
              style: AppTextStyles.smallerblueText,
            ),
          )
        ],
      ),
    );
  }
}
