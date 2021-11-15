import 'package:flutter/material.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: appPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(buttonText, style: AppTextStyles.whiteText),
    );
  }
}

class BookNowButton extends StatelessWidget {
  const BookNowButton(
      {Key? key, required this.roomPrice, required this.buttonTexts})
      : super(key: key);
  final String roomPrice;
  final String buttonTexts;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: appPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 38.0),
            child: Text('$roomPrice /Night', style: AppTextStyles.whiteText),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
                height: 40,
                width: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: appWhiteColor,
                ),
                child: Text(buttonTexts, style: AppTextStyles.blackText)),
          ),
        ],
      ),
    );
  }
}
