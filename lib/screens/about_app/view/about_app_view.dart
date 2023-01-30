import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../widgets/custom_about_continer.dart';
class AboutAppView extends StatelessWidget {
  const AboutAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top:height(context)*0.045,left:height(context)*0.035,right: height(context)*0.035,  ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                  children: [
                    Row(
                children: [
                    GestureDetector(
                    onTap: ()=>Navigator.pop(context),
                      child: Container(
                    padding: const EdgeInsets.all(7),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(5),
                    color: AppColor.grayColor.withOpacity(.2)
          ),
                       child: Transform.rotate(
                        angle: pi,
                         child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
        ),
      ),
                    SizedBox(width: width(context)*0.05,),
                     CustomText(text: LocaleKeys.aboutApp.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
      ],
    ),
                    SizedBox(height: height(context)*0.01,),
                    Image.asset(AppImages.greenLogo,width: width(context)*.48,),
                    SizedBox(height: height(context)*0.02,),
                    CustomText(text:LocaleKeys.aboutAppText.tr(),
                        color: AppColor.primaryColor,size: 13,align: TextAlign.center,),
                    SizedBox(height: height(context)*0.03,),
                    CustomAboutContainer(text1: '${LocaleKeys.ourVision.tr()} :',text2:  LocaleKeys.ourVisionText.tr(),),
                    SizedBox(height: height(context)*0.015,),
                    CustomAboutContainer(text1: '${LocaleKeys.ourMessage.tr()} :',text2:  LocaleKeys.ourMessageText.tr(),),
                    SizedBox(height: height(context)*0.015,),
                    CustomAboutContainer(text1: '${LocaleKeys.ourValues.tr()} :',text2:  LocaleKeys.ourValuesText.tr(),),
                    SizedBox(height: height(context)*0.015,),
                    CustomText(text: LocaleKeys.mangerPosition.tr(), color:AppColor.primaryColor ),
                    SizedBox(height: height(context)*0.03,),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoutes.managerWord);
                        },
                        child: Image.asset(AppImages.next,width: width(context)*.17,)),



                  ]),
            ))));
  }
}
