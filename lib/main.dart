import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/local/cach_helper.dart';
import 'screens/splash.dart';
import 'translation/codegen_loader.g.dart';
import 'utilities/router.dart';
import 'utilities/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await CacheHelper.init();
  runApp(EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('ar')
      ],
      fallbackLocale: Locale('ar'),
      assetLoader: CodegenLoader(),
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Mawasim',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.splash,


    );
  }
}


