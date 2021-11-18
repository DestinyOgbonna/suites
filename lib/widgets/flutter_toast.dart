import 'package:fluttertoast/fluttertoast.dart';
import 'package:suites/constants/appcolors.dart';

errorToast(String message) {
  Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT, backgroundColor:appRedColor, textColor: appWhiteColor);
}
successToast(String message) {
  Fluttertoast.showToast(msg: message, toastLength: Toast.LENGTH_SHORT, backgroundColor:appSuccessColor, textColor: appWhiteColor);
}
