import 'package:flutter/material.dart';

import '../screens/auth/choose_auth/view/choose_auth.dart';
import '../screens/auth/login/view/login_view.dart';
import '../screens/auth/register/view/register_view.dart';
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
    case AppRoutes.chooseAuth:
      return MaterialPageRoute(builder: ((context) => const ChooseAuth()));
    case AppRoutes.login:
      return MaterialPageRoute(builder: ((context) => const LoginView()));
    case AppRoutes.register:
      return MaterialPageRoute(builder: ((context) => const RegisterView()));
    default:
      return MaterialPageRoute(builder: ((context) => const SplashScreen()));
  }
}