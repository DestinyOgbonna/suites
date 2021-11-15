import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/widgets/custom_textfield.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/views/login/login_viewmodel.dart';
import 'package:suites/widgets/custom_button.dart';

import 'login.form.dart';

@FormView(
  fields: [
    FormTextField(name: 'email'),
    FormTextField(name: 'password'),
  ],
)
class LoginView extends StatelessWidget with $LoginView {
 LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        onModelReady: (model) => listenToFormUpdated(model),
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
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
                            'Welcome Back!',
                            style: AppTextStyles.blackText,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: CustomTextField(
                          controller: emailController,
                          hint: 'E-mail',
                          // label: 'Enter user name',
                          prefixicons: const Icon(Icons.email_outlined),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: CustomTextField(
                          controller: passwordController,
                          hint: 'Password',
                          // label: 'Enter user name',
                          prefixicons: const Icon(Icons.lock_outline),
                          suffixicons: const Icon(Icons.visibility_off),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Text('Forgot Password?',
                                style: AppTextStyles.smallblueText)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: GestureDetector(
                            onTap: () {
                              model.loginToApp();
                            },
                            child: const CustomButton(buttonText: 'Sign-In')),
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
                            GestureDetector(
                                onTap: () {
                                  model.signInWithGoogle();
                                },
                                child: Image.asset('images/icons/google.png',
                                    height: 50)),
                            Image.asset('images/icons/twitter.png', height: 50)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              model.toSignUp();
                            },
                            child: RichText(
                                text: TextSpan(
                                    text: 'Dont have an accont?',
                                    style: AppTextStyles.smallblackText,
                                    children: [
                                  TextSpan(
                                      text: 'Sign Up',
                                      style: GoogleFonts.montserrat(
                                          color: appPrimaryColor,
                                          fontWeight: FontWeight.bold))
                                ])),
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          ));
        });
  }
}
