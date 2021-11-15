import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/welcome_screens/welcome_screen_viewmodel.dart';

class WelcomeScreenView extends StatelessWidget {
  const WelcomeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<WelcomeScreenViewModel>.reactive(
        viewModelBuilder: () => WelcomeScreenViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: IntroductionScreen(
              showDoneButton: true,
              showNextButton: true,
              //showSkipButton: true,
              next: Text('Next', style: AppTextStyles.smallblueText),
              done: Text('Welcome', style: AppTextStyles.smallblueText),

              onDone: () {
                model.EndScreens();
              },
              //onSkip: (){},

              pages: [
                PageViewModel(
                    image: Center(
                        child: SvgPicture.asset(
                      'images/place.svg',
                    )),
                    title: 'Your comfort our pride',
                    body: 'The best suites are provided for your comfort',
                    decoration: PageDecoration(
                        titleTextStyle: AppTextStyles.blackText,
                        titlePadding: const EdgeInsets.symmetric(vertical: 39),
                        bodyTextStyle: AppTextStyles.smallblueText,
                        pageColor: Colors.white,
                        imagePadding: const EdgeInsets.only(
                          top: 80,
                          right: 40,
                          left: 40,
                        ))),
                PageViewModel(
                    image: Center(
                        child: SvgPicture.asset(
                      'images/coming_home.svg',
                    )),
                    body: 'We give you the best at a pocket friendly price',
                    title: 'Welcome home',
                    decoration: PageDecoration(
                        titleTextStyle: AppTextStyles.blackText,
                        titlePadding: const EdgeInsets.symmetric(vertical: 39),
                        bodyTextStyle: AppTextStyles.smallblueText,
                        pageColor: Colors.white,
                        imagePadding: const EdgeInsets.only(
                          top: 80,
                          right: 40,
                          left: 40,
                        ))),
              ],

              dotsDecorator: DotsDecorator(
                  activeColor: appPrimaryColor,
                  activeSize: const Size(30.0, 3),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
              dotsContainerDecorator: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
            ),
          );
        });
  }
}
