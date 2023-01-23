import 'package:easy_localization/easy_localization.dart';

import '../../../component/style/images.dart';
import '../../../translation/locale_keys.g.dart';

class IntroModel{
  String title;
  String img;
  String? subtitle;
  String body;

  IntroModel({required this.title, required this.img, this.subtitle, required this.body});
}

List<IntroModel> introList=[
  IntroModel(title: LocaleKeys.IntroTitle3.tr(), img: AppImages.introImg3, body: LocaleKeys.IntroBody3.tr()),
  IntroModel(title: LocaleKeys.IntroTitle2.tr(), img: AppImages.introImg2, body: LocaleKeys.IntroBody2.tr() ),
  IntroModel(title: LocaleKeys.IntroTitle1.tr(), img: AppImages.introImg1, body: LocaleKeys.IntroBody1.tr(),subtitle:LocaleKeys.IntroSub1.tr() ),


];
