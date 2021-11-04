import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.router.dart';

class WelcomeScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  // ignore: non_constant_identifier_names
  void EndScreens() {
    _navigationService.navigateTo(Routes.gettingStartedView);
  }
}
