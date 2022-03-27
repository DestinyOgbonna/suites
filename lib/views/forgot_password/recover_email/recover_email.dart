import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/validation/validations.dart';
import 'package:suites/views/forgot_password/recover_email/recover_emailviewmodel.dart';
import 'package:suites/widgets/custom_button.dart';
import 'package:suites/widgets/custom_textfield.dart';

class RecoveryEmailView extends StatelessWidget {
  const RecoveryEmailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RecoveryEmailViewModel>.reactive(
        viewModelBuilder: () => RecoveryEmailViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Please Enter Your Registered Email',
                      style: AppTextStyles.blackText,
                    ),
                    const SizedBox(height: 30),
                    Form(
                      child: CustomTextField(
                        validateFunction: Validations.validateEmail,
                        controller: model.recoveryEmailController,
                        hint: 'Enter Email Address',
                        prefixicons: const Icon(Icons.email),
                      ),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                        onTap: () {
                          model.toEnterNewPassword();
                        },
                        child: const CustomButton(buttonText: 'Send')),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
