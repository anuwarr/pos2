import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:url_navigation_web/LandingPage.dart';
import 'package:url_navigation_web/SplashScreen.dart';
import 'package:url_navigation_web/pages/login_page.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _splashHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          SplashScreen());

  static Handler _mainHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LandingPage(
              page: params['name']
                  [0])); // this one is for one paramter passing...

  static Handler _mainHandler2 = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LandingPage(
            page: params['name'][0],
            extra: params['extra'][0],
          ));
  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          LoginPage());

  static void setupRouter() {
    router.define(
      '/',
      handler: _splashHandler,
    );
    router.define(
      '/login',
      handler: _loginHandler,
    );
    router.define(
      '/main/:name',
      handler: _mainHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/main/:name/:extra',
      handler: _mainHandler2,
      transitionType: TransitionType.fadeIn,
    );
  }
}
