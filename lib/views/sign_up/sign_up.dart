import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/constants/custom_textfield.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/widgets/custom_button.dart';

import 'sign_up_viewmodel.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (context, model, child) {
          return Scaffold(
              body: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 55, left: 15, right: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.home,
                            size: 50,
                            color: appPrimaryColor,
                          ),
                          Text(
                            'De-Suites',
                            style: AppTextStyles.headerText,
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 40),
                        child: Center(
                          child: Text(
                            'Welcome, Nice to have you',
                            style: AppTextStyles.blackText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: CustomTextField(
                          hint: 'User name',
                          // label: 'Enter user name',
                          prefixicons: const Icon(Icons.person_outline),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: CustomTextField(
                          hint: 'E-mail',
                          // label: 'Enter user name',
                          prefixicons: const Icon(Icons.email_outlined),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: CustomTextField(
                          hint: 'Password',
                          obscure: true,
                          // label: 'Enter user name',
                          prefixicons: const Icon(Icons.lock_outline),
                          suffixicons: const Icon(Icons.visibility_off),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: CustomTextField(
                          hint: 'Re-enter Password',
                          obscure: true,
                          // label: 'Enter user name',
                          prefixicons: const Icon(Icons.lock_outline),
                          suffixicons: const Icon(Icons.visibility_off),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: GestureDetector(
                            onTap: () {
                              model.toSignIn(); 
                            },
                            child: CustomButton(buttonText: 'Sign-Up')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 48.0),
                        child: Center(
                          child: Text(
                            '-OR-',
                            style: AppTextStyles.blackText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              'images/icons/facebook.png',
                              height: 50,
                            ),
                            Image.asset('images/icons/google.png', height: 50),
                            Image.asset('images/icons/twitter.png', height: 50)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: Center(
                          child: RichText(
                              text: TextSpan(
                                  text: 'Already have an accont?',
                                  style: AppTextStyles.smallblackText,
                                  children: [
                                TextSpan(
                                    text: 'Sign In',
                                    style: GoogleFonts.montserrat(
                                        color: appPrimaryColor,
                                        fontWeight: FontWeight.bold))
                              ])),
                        ),
                      )
                    ]),
              ),
            ),
          ));
        });
  }
}
