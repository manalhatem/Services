import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/images.dart';

import '../../../component/custom_btn.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top:height(context)*0.045,left:height(context)*0.035,right: height(context)*0.035,  ),
          child: SingleChildScrollView(
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
                    CustomText(text: LocaleKeys.presonalInfo.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                  ],
                ),
                SizedBox(height: height(context)*0.07,),
                Stack(
                  children: [
                    SizedBox(
                      width: width(context)*0.9,
                      height: height(context)*0.585,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: width(context)*0.9,
                        height: height(context)*0.5,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(image: AssetImage(AppImages.backData),fit: BoxFit.cover)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: height(context)*0.12,right:height(context)*0.025 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: 'اسم المستخدم:', color: AppColor.primaryColor),
                              SizedBox(height: height(context)*0.002,),
                              CustomText(text: 'منال حاتم صلاح', color: AppColor.grayColor,size: 14,),
                              SizedBox(height: height(context)*0.04,),
                              CustomText(text: 'رقم الجوال:', color: AppColor.primaryColor),
                              SizedBox(height: height(context)*0.004,),
                              CustomText(text: '010654321', color: AppColor.grayColor,size: 14,),
                              SizedBox(height: height(context)*0.04,),
                              CustomText(text: 'البريد الالكتروني :', color: AppColor.primaryColor),
                              SizedBox(height: height(context)*0.004,),
                              CustomText(text: 'manal@gmail.com', color: AppColor.grayColor,size: 14,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 94,
                        child: Image.asset(AppImages.user,width: width(context)*0.33,)),

                  ],
                ),
                SizedBox(
                  height: height(context)*0.05,
                ),
                CustomBtn(text: LocaleKeys.edit.tr(),ontap: (){
                  Navigator.pushNamed(context, AppRoutes.editInfo);
                },),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
