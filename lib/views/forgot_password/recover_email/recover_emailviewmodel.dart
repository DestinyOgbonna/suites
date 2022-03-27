import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.router.dart';

class RecoveryEmailViewModel extends BaseViewModel{
    final _navigationService = locator<NavigationService>();

  TextEditingController recoveryEmailController = TextEditingController();

  void toEnterNewPassword() {
    _navigationService.navigateTo(Routes.newPasswordView);
  }

}