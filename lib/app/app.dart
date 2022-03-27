import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/services/firebase_auth.dart';
import 'package:suites/services/firestore_auth.dart';
import 'package:suites/views/bottom_nav/bottom_nav.dart';
import 'package:suites/views/customer_service_chat/customer_chat.dart';
import 'package:suites/views/forgot_password/new_password/new_password.dart';
import 'package:suites/views/forgot_password/recover_email/recover_email.dart';
import 'package:suites/views/getting_started_screen/getting_started.dart';
import 'package:suites/views/hotel_details/hotel_details.dart';

import 'package:suites/views/login/login.dart';
import 'package:suites/views/sign_up/sign_up.dart';
import 'package:suites/views/splash_screen/splash_screen.dart';
import 'package:suites/views/welcome_screens/welcome_screen.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: WelcomeScreenView, initial: true),
    CupertinoRoute(page: SplashScreenView),
    CupertinoRoute(page: GettingStartedView),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: BtmNavView),
    CupertinoRoute(page: CustomerChatView),
    CupertinoRoute(page: HotelDetailsView),
    CupertinoRoute(page: RecoveryEmailView),
    CupertinoRoute(page: NewPasswordView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    Presolve(
      classType: FireAuthService,
      presolveUsing: FireAuthService.getInstance,
    ),
    Presolve(
      classType: FireStoreAuth,
      presolveUsing: FireStoreAuth.getInstance,
    ),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
