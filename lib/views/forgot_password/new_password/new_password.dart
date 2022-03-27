import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/constants/text_styles.dart';
import 'package:suites/validation/validations.dart';
import 'package:suites/views/forgot_password/new_password/new_passwordviewmodel.dart';
import 'package:suites/widgets/custom_button.dart';
import 'package:suites/widgets/custom_textfield.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewPasswordViewModel>.reactive(
        viewModelBuilder: () => NewPasswordViewModel(),
        builder: (context, model, child) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Please Enter Your New Password.',
                      style: AppTextStyles.blackText,
                    ),
                    const SizedBox(height: 30),
                    Form(
                      child: Column(
                        children: [
                          CustomTextField(
                              controller: model.recoveryPasswordController,
                              onChange: (val) {},
                              hint: 'Enter new Password',
                              prefixicons: const Icon(Icons.email),
                              validateFunction: Validations.validatePassword),
                          const SizedBox(height: 30),
                          CustomTextField(
                            controller: model.reEnterpasswordController,
                            onChange: (val) {},
                            validateFunction: model.confirmPasswordFields,
                            hint: 'Confirm Password',
                            prefixicons: const Icon(Icons.email),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    const CustomButton(buttonText: 'Save'),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
