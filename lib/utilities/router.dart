import 'package:flutter/material.dart';

import '../screens/intro_screen/views/intro_screen.dart';
import '../screens/langague/view/lang_view.dart';
import '../screens/splash.dart';
import 'routes.dart';



Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splash:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
    case AppRoutes.lang:
      return MaterialPageRoute(builder: ((context) => const LanguageView()));
    case AppRoutes.intro:
      return MaterialPageRoute(builder: ((context) => const IntroView()));

    default:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
  }
}