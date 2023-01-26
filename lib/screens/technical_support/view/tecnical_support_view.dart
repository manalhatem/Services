import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/images.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../widgets/dotted_container.dart';
class TechnicalView extends StatelessWidget {
  const TechnicalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
            padding:  EdgeInsets.only(top:height(context)*0.05,left:height(context)*0.035,right: height(context)*0.035,  ),
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
                  CustomText(text: LocaleKeys.customerser.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.05,),
              Image.asset('assets/images/pr0.png',width: width(context)*0.55,),
              SizedBox(height: height(context)*0.02,),
              CustomText(text: LocaleKeys.howCanHelp.tr(), color: AppColor.secondryColor,size: 18,),
              SizedBox(height: height(context)*0.02,),
              CustomText(text: LocaleKeys.P1.tr(), color: AppColor.grayColor,fontfam:'GeLight',size: 16,align: TextAlign.center,),
              SizedBox(height: height(context)*0.02,),
              Row(
                children: [
                  CustomContainer(tap: () {
                    Navigator.pushNamed(context, AppRoutes.problemHistoryScreen);
                  }, image: 'assets/images/pr1.png', text1: 'سجل المشكلات',),
                  const Spacer(),
                  CustomContainer(tap: () {}, image: 'assets/images/pr2.png', text1: 'الابلاغ عن مشكله',),
                ],
              ),


            ],
          ),
        ) ,
      ),
    );
  }
}
