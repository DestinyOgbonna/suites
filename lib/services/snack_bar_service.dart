import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/constants/appcolors.dart';

class AppSnackBar {
  static void setupSnackBarUi() {
    final service = locator<SnackbarService>();

    service.registerCustomSnackbarConfig(
        variant: SnackBarType.failure,
        config: SnackbarConfig(
          backgroundColor: appRedColor,
          textColor: appWhiteColor,
          borderRadius: 1,
          dismissDirection: SnackDismissDirection.VERTICAL,
          barBlur: 0.5,
          messageColor: appWhiteColor,
          snackPosition: SnackPosition.BOTTOM,
          snackStyle: SnackStyle.FLOATING,
        ));

    service.registerCustomSnackbarConfig(
        variant: SnackBarType.success,
        config: SnackbarConfig(
          backgroundColor: appSuccessColor,
          textColor: appWhiteColor,
          borderRadius: 1,
          dismissDirection: SnackDismissDirection.VERTICAL,
          barBlur: 0.5,
          messageColor: appWhiteColor,
          snackPosition: SnackPosition.BOTTOM,
          snackStyle: SnackStyle.FLOATING,
        ));
  }
}

enum SnackBarType { success, failure }
