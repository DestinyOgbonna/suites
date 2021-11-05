// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../views/bottom_nav/bottom_nav.dart';
import '../views/getting_started_screen/getting_started.dart';
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
  static const all = <String>{
    welcomeScreenView,
    splashScreenView,
    gettingStartedView,
    loginView,
    signUpView,
    btmNavView,
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
      return CupertinoPageRoute<dynamic>(
        builder: (context) => const LoginView(),
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
  };
}
