// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/bottom_nav/bottom_nav.dart';
import '../views/customer_service_chat/customer_chat.dart';
import '../views/forgot_password/new_password/new_password.dart';
import '../views/forgot_password/recover_email/recover_email.dart';
import '../views/getting_started_screen/getting_started.dart';
import '../views/hotel_details/hotel_details.dart';
import '../views/login/login.dart';
import '../views/sign_up/sign_up.dart';
import '../views/splash_screen/splash_screen.dart';
import '../views/welcome_screens/welcome_screen.dart';

class Routes {
  static const String welcomeScreenView = '/';
  static const String splashScreenView = '/splash-screen-view';
  static const String gettingStartedView = '/getting-started-view';
  static const String loginView = '/login-view';
  static const String signUpView = '/sign-up-view';
  static const String btmNavView = '/btm-nav-view';
  static const String customerChatView = '/customer-chat-view';
  static const String hotelDetailsView = '/hotel-details-view';
  static const String recoveryEmailView = '/recovery-email-view';
  static const String newPasswordView = '/new-password-view';
  static const all = <String>{
    welcomeScreenView,
    splashScreenView,
    gettingStartedView,
    loginView,
    signUpView,
    btmNavView,
    customerChatView,
    hotelDetailsView,
    recoveryEmailView,
    newPasswordView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.welcomeScreenView, page: WelcomeScreenView),
    RouteDef(Routes.splashScreenView, page: SplashScreenView),
    RouteDef(Routes.gettingStartedView, page: GettingStartedView),
    RouteDef(Routes.loginView, page: LoginView),
    RouteDef(Routes.signUpView, page: SignUpView),
    RouteDef(Routes.btmNavView, page: BtmNavView),
    RouteDef(Routes.customerChatView, page: CustomerChatView),
    RouteDef(Routes.hotelDetailsView, page: HotelDetailsView),
    RouteDef(Routes.recoveryEmailView, page: RecoveryEmailView),
    RouteDef(Routes.newPasswordView, page: NewPasswordView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    WelcomeScreenView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const WelcomeScreenView(),
        settings: data,
      );
    },
    SplashScreenView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SplashScreenView(),
        settings: data,
      );
    },
    GettingStartedView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const GettingStartedView(),
        settings: data,
      );
    },
    LoginView: (data) {
      var args = data.getArgs<LoginViewArguments>(
        orElse: () => LoginViewArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => LoginView(key: args.key),
        settings: data,
      );
    },
    SignUpView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const SignUpView(),
        settings: data,
      );
    },
    BtmNavView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const BtmNavView(),
        settings: data,
      );
    },
    CustomerChatView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const CustomerChatView(),
        settings: data,
      );
    },
    HotelDetailsView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const HotelDetailsView(),
        settings: data,
      );
    },
    RecoveryEmailView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const RecoveryEmailView(),
        settings: data,
      );
    },
    NewPasswordView: (data) {
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const NewPasswordView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// LoginView arguments holder class
class LoginViewArguments {
  final Key? key;
  LoginViewArguments({this.key});
}
