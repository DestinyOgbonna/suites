// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const String UsernameValueKey = 'username';
const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';
const String ReEnterPasswordValueKey = 'reEnterPassword';

mixin $SignUpView on StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController re_enterPasswordController =
      TextEditingController();
  final FocusNode usernameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode re_enterPasswordFocusNode = FocusNode();

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void listenToFormUpdated(FormViewModel model) {
    usernameController.addListener(() => _updateFormData(model));
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    re_enterPasswordController.addListener(() => _updateFormData(model));
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormViewModel model) => model.setData(
        model.formValueMap
          ..addAll({
            UsernameValueKey: usernameController.text,
            EmailValueKey: emailController.text,
            PasswordValueKey: passwordController.text,
            ReEnterPasswordValueKey: re_enterPasswordController.text,
          }),
      );

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    usernameController.dispose();
    usernameFocusNode.dispose();
    emailController.dispose();
    emailFocusNode.dispose();
    passwordController.dispose();
    passwordFocusNode.dispose();
    re_enterPasswordController.dispose();
    re_enterPasswordFocusNode.dispose();
  }
}

extension ValueProperties on FormViewModel {
  String? get usernameValue => this.formValueMap[UsernameValueKey];
  String? get emailValue => this.formValueMap[EmailValueKey];
  String? get passwordValue => this.formValueMap[PasswordValueKey];
  String? get reEnterPasswordValue =>
      this.formValueMap[ReEnterPasswordValueKey];

  bool get hasUsername => this.formValueMap.containsKey(UsernameValueKey);
  bool get hasEmail => this.formValueMap.containsKey(EmailValueKey);
  bool get hasPassword => this.formValueMap.containsKey(PasswordValueKey);
  bool get hasReEnterPassword =>
      this.formValueMap.containsKey(ReEnterPasswordValueKey);
}

extension Methods on FormViewModel {}
