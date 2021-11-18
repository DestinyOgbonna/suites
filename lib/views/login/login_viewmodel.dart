import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.logger.dart';
import 'package:suites/app/app.router.dart';
import 'package:suites/services/dialog_service.dart';
import 'package:suites/services/firebase_auth.dart';
import 'package:suites/services/snack_bar_service.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  final log = getLogger('Register');
  final _authservice = locator<FireAuthService>();
  final _snackbar = locator<SnackbarService>();
  final _dialog = locator<DialogService>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void toSignUp() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void loginToApp() async {
    try {
      if (emailController.text.isEmpty ||
          passwordController.text.isEmpty ||
          emailController.text == '' ||
          passwordController.text == '') {
        _snackbar.showCustomSnackBar(
            variant: SnackBarType.failure, message: 'Please fill all fields');
      } else if (loginKey.currentState!.validate()) {
        _dialog.showCustomDialog(
          variant: DialogType.login,
        );

        final loginUser = await _authservice.login(
            emailController.text.trim(), passwordController.text.trim());
        if (loginUser != null) {
          getUserInfo(loginUser.user!.uid);
          _navigationService.back();
          _snackbar.showCustomSnackBar(
            message: 'Registration Successful',
            variant: SnackBarType.success,
            duration: const Duration(seconds: 3),
          );
          _navigationService.navigateTo(Routes.btmNavView);
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

  void getUserInfo(String uid) {
    uid = '';
  }

  // Future<Object> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUserDetails =
  //         await GoogleSignIn().signIn();
  //     final GoogleSignInAuthentication? googleAuth =
  //         await googleUserDetails?.authentication;

  //     final credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth?.accessToken,
  //       idToken: googleAuth?.idToken,
  //     );
  //     _navigationService.navigateTo(Routes.btmNavView);
  //     return await FirebaseAuth.instance.signInWithCredential(credential);
  //   } catch (e) {
  //     String e = 'Error signing in with Google';
  //     _navigationService.navigateTo(Routes.loginView);
  //   }
  //   return UserCredential;
  // }

}
