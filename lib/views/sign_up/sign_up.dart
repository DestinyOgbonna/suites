import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/validation/validations.dart';

import 'sign_up_viewmodel.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/widgets/custom_textfield.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/widgets/custom_button.dart';

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

                      //============================== Form Start

                      Form(
                        key: model.formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: CustomTextField(
                                onChange: (val) {},
                                keyBoardType: TextInputType.name,
                                controller: model.usernameController,
                                hint: 'User name',
                                prefixicons: const Icon(Icons.person_outline),
                                validateFunction: Validations.validateName,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: CustomTextField(
                                  onChange: (val) {},
                                  keyBoardType: TextInputType.emailAddress,
                                  controller: model.emailController,
                                  hint: 'E-mail',
                                  prefixicons: const Icon(Icons.email_outlined),
                                  validateFunction: Validations.validateEmail),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: CustomTextField(
                                  onChange: (val) {},
                                  keyBoardType: TextInputType.visiblePassword,
                                  controller: model.passwordController,
                                  hint: 'Password',
                                  obscure: true,
                                  prefixicons: const Icon(Icons.lock_outline),
                                  suffixicons: const Icon(Icons.visibility_off),
                                  validateFunction:
                                      Validations.validatePassword),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18.0),
                              child: CustomTextField(
                                onChange: (val) {},
                                controller: model.reEnterPasswordController,
                                hint: 'Re-enter Password',
                                keyBoardType: TextInputType.visiblePassword,
                                obscure: true,
                                validateFunction: model.confirmPasswordFields,
                                prefixicons: const Icon(Icons.lock_outline),
                                suffixicons: const Icon(Icons.visibility_off),
                              ),
                            ),
                          ],
                        ),
                      ),

//Form End

                      Padding(
                        padding: const EdgeInsets.only(top: 38.0),
                        child: InkWell(
                            onTap: () async {
                              model.signUp();
                            },
                            child: const CustomButton(buttonText: 'Sign-Up')),
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
                        padding: const EdgeInsets.only(top: 18.0),
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
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              model.toSignIn();
                            },
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
                        ),
                      )
                    ]),
              ),
            ),
          ));
        });
  }
}
