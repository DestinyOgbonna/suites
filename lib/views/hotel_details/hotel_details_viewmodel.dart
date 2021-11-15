import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.router.dart';

class HotelDetailsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void toLogin() {
    _navigationService.navigateTo(Routes.btmNavView);
  }
}
