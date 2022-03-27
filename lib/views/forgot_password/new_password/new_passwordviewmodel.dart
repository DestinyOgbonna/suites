import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

class NewPasswordViewModel extends BaseViewModel{
TextEditingController recoveryPasswordController = TextEditingController();
TextEditingController reEnterpasswordController = TextEditingController();


  String? confirmPasswordFields(String? value) {
    if (recoveryPasswordController.text != reEnterpasswordController.text) {
      return 'Passwords do not match!.';
    }
  }
}