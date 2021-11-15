import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/views/bottom_nav/bottom_nav.dart';
import 'package:suites/views/getting_started_screen/getting_started.dart';
import 'package:suites/views/hotel_details/hotel_details.dart';

import 'package:suites/views/login/login.dart';
import 'package:suites/views/sign_up/sign_up.dart';
import 'package:suites/views/splash_screen/splash_screen.dart';
import 'package:suites/views/welcome_screens/welcome_screen.dart';

@StackedApp(routes: [
  CupertinoRoute(page: WelcomeScreenView, initial: true),
  CupertinoRoute(page: SplashScreenView),
  CupertinoRoute(page: GettingStartedView),
  CupertinoRoute(page: LoginView),
  CupertinoRoute(page: SignUpView),
  CupertinoRoute(page: BtmNavView),
  CupertinoRoute(page: HotelDetailsView),
], dependencies: [
  LazySingleton(classType: NavigationService)
])
class AppSetup {}
