import 'package:easy_localization/easy_localization.dart';
import 'package:mwassim/component/style/images.dart';

import '../../../translation/locale_keys.g.dart';

class ServiceModel{
  String name;
  String image;
  bool sel;

  ServiceModel({required this.name, required this.image,required this.sel});
}

List<ServiceModel> services=[
  ServiceModel(name: LocaleKeys.service1.tr(), image: AppImages.ser1,sel: true),
  ServiceModel(name: LocaleKeys.service2.tr(), image: AppImages.ser2,sel: false),
  ServiceModel(name: LocaleKeys.service3.tr(), image: AppImages.ser3,sel: false),
  ServiceModel(name: LocaleKeys.service4.tr(), image: AppImages.ser4,sel: false),
  ServiceModel(name: LocaleKeys.service5.tr(), image: AppImages.ser5,sel: false),
  ServiceModel(name: LocaleKeys.service6.tr(), image: AppImages.ser6,sel: false),
];