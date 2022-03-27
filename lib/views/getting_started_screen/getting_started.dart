import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/getting_started_screen/getting_started_viewmodel.dart';
import 'package:suites/widgets/custom_button.dart';

class GettingStartedView extends StatelessWidget {
  const GettingStartedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GettingStartedViewModel>(builder: (context, model, child) {
      return Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              children: [
                Center(
                    child: SvgPicture.asset(
                  'images/rent.svg',
                )),
                Text(
                  'Find the best Deals',
                  style: AppTextStyles.blackText,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Book with us and get the best deals',
                  style: AppTextStyles.smallblueText,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        model.toLogin();
                      },
                      child: const CustomButton(
                        buttonText: 'Get Started',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
