import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.router.dart';

class LoginViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void toSignUp() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void loginToApp() {
    _navigationService.navigateTo(Routes.btmNavView);
  }
}
