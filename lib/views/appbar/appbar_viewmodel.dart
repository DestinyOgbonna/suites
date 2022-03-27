import 'package:stacked/stacked.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/services/firebase_auth.dart';

class AppBarViewModel extends BaseViewModel {
  final _authservice = locator<FireAuthService>();

  signOut() async {
    _authservice.signOut();
  }
}
