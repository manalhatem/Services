import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/size.dart';
import '../../../core/local/cach_helper.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height(context)*0.075,),
              Image.asset(AppImages.imgLang,width: width(context) *0.55),
              SizedBox(height: height(context)*0.055,),
              CustomText(text: LocaleKeys.CompanyName.tr(), color: AppColor.primaryColor,
              size: AppFonts.t5,fontfam: 'GeMed',align: TextAlign.center,),
              SizedBox(height: height(context)*0.01,),
              CustomText(text: LocaleKeys.CompanyTitle.tr(), color: AppColor.secondryColor,
                size: AppFonts.t2,align: TextAlign.center,),
              const Spacer(),
              Stack(
                children: [
                  Image.asset(AppImages.chooseLang),
                  Positioned(
                      bottom: height(context)*0.09,
                      left:  height(context)*0.09,
                      child: GestureDetector(
                          onTap: ()async{
                            await context.setLocale(Locale('en'));
                            CacheHelper.saveData('appLang', 'en');
                            Navigator.pushReplacementNamed(context, AppRoutes.intro);
                          },
                          child: CustomText(text: 'English', color: Colors.white,size: AppFonts.t5,))),
                  Positioned(
                      bottom: height(context)*0.09,
                      right:  height(context)*0.09,
                      child: GestureDetector(
                          onTap: ()async{
                            await context.setLocale(Locale('ar'));
                            CacheHelper.saveData('appLang', 'ar');
                            Navigator.pushReplacementNamed(context, AppRoutes.intro);

                          },
                          child: CustomText(text: 'اللغه العربيه', color: Colors.white,size: AppFonts.t5,))),
                ],
              ),




            ],
          ),
        ),

      ),
    );
  }
}
