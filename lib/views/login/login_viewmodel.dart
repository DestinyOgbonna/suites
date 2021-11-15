import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:suites/app/app.locator.dart';
import 'package:suites/app/app.router.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void toSignUp() {
    _navigationService.navigateTo(Routes.signUpView);
  }

  void loginToApp() {
    _navigationService.navigateTo(Routes.btmNavView);
  }

  Future<Object> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUserDetails =
          await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUserDetails?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      _navigationService.navigateTo(Routes.btmNavView);
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      String e = 'Error signing in with Google';
      _navigationService.navigateTo(Routes.loginView);
    }
    return UserCredential;
  }

  @override
  void setFormStatus() {
    // TODO: implement setFormStatus
  }
}
