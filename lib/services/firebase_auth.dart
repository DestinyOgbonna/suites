import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.logger.dart';

class FireAuthService {
  final log = getLogger('Firebase Auth');
  static FireAuthService? _instance;
  static FirebaseAuth? _firebaseAuth;
  final _snackBar = locator<SnackbarService>();

  static Future<FireAuthService> getInstance() async {
    _instance ??= FireAuthService();
    _firebaseAuth ??= FirebaseAuth.instance;
    return _instance!;
  }

  Future<UserCredential>? signUp(String? email, String? password) {
    try {
      final newUser = _firebaseAuth!
          .createUserWithEmailAndPassword(email: email!, password: password!);
      return newUser;
    } on FirebaseException {
      throw Failure(message: 'Registration Failed');
    } on SocketException {
      // _snackBar.showCustomSnackBar(
      //     message: 'Check internet cinnection', variant: SnackBarType.failure);
      throw Failure(message: 'Connection Error');
    } catch (e) {
      //throw Failure(message: e.toString());
    }
  }

  Future<UserCredential>? login(String? email, String? password) {
    try {
      final newUSer = _firebaseAuth!
          .signInWithEmailAndPassword(email: email!, password: password!);
      return newUSer;
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  signOut() {
    _firebaseAuth!.signOut();
  }
}

class Failure {
  final String? message;
  Failure({this.message});

  @override
  String toString() {
    return message!;
  }
}
