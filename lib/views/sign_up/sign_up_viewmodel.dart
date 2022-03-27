import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.logger.dart';
import 'package:suites/app/app.router.dart';
import 'package:suites/services/dialog_service.dart';
import 'package:suites/services/firebase_auth.dart';
import 'package:suites/services/snack_bar_service.dart';

class SignUpViewModel extends BaseViewModel {
  final log = getLogger('Register');
  final _navigationService = locator<NavigationService>();
  final _authservice = locator<FireAuthService>();
  final _snackbar = locator<SnackbarService>();
  final _dialog = locator<DialogService>();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();

  void signUp() async {
    try {
      if (usernameController.text.isEmpty ||
          emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          reEnterPasswordController.text.isEmpty ||
          usernameController.text == '' ||
          emailController.text == '' ||
          passwordController.text == '' ||
          reEnterPasswordController.text == '') {
        _snackbar.showCustomSnackBar(
            variant: SnackBarType.failure, message: 'Please fill all fields');
      } 
      
      else if (formKey.currentState!.validate()) {
        _dialog.showCustomDialog(
          variant: DialogType.register,
        );
        final registerUser = await _authservice.signUp(
            emailController.text, passwordController.text);
        if (registerUser != null) {
          updateUserinfo(registerUser.user!.uid);
          _navigationService.back();
          _snackbar.showCustomSnackBar(
            message: 'Registration Successful',
            variant: SnackBarType.success,
            duration: const Duration(seconds: 3),
          );
          _navigationService.navigateTo(Routes.loginView);
        }
      }
    } on FirebaseException catch (e) {
      _navigationService.back();
      _snackbar.showCustomSnackBar(
          message: '${e.message}',
          variant: SnackBarType.failure,
          duration: const Duration(seconds: 3));
    } on SocketException {
      _snackbar.showCustomSnackBar(
          variant: SnackBarType.failure,
          message: 'Please check internet Connection');
    }
    notifyListeners();
  }

  String? confirmPasswordFields(String? value) {
    if (passwordController.text != reEnterPasswordController.text) {
      return 'Passwords do not match!.';
    }
  }

 

  toSignIn() {
    _navigationService.navigateTo(Routes.loginView);
  }

  void updateUserinfo(String uid) async {
    Map<String, dynamic> userMap = {
      'userId': uid,
      // 'chattingWith': '',
      // 'email': emailController.text,
      //'userName': usernameController.text,
      //'createdAt': DateTime.now().millisecondsSinceEpoch.toString(),
    };
    // try {
    //   await _fireStore.collection('users').doc(uid).set(userMap);
    // } catch (e) {
    //   log.e(Failure(message: e.toString()));
    // }
    notifyListeners();
  }
}
