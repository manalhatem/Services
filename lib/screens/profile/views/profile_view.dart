import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';
import 'package:mwassim/component/style/images.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/style/colors.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../widgets/custom_profile_row.dart';
class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.profileBack,),fit: BoxFit.cover
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top:height(context)*0.07,right: width(context)*0.07 ),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: ()=>Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.whiteColor.withOpacity(.6)
                    ),
                    child: Transform.rotate(
                        angle: pi,
                        child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,size: 22,)),
                  ),
                ),
              ),
            ),
            Image.asset(AppImages.user,width: width(context)*0.37,),
            SizedBox(height: height(context)*0.02,),
            CustomText(text: 'منال حاتم صلاح', color: AppColor.primaryColor,size: 18,fontfam: 'GeMed',),
            SizedBox(height: height(context)*0.005,),
            CustomText(text: 'manal@gmail.com', color: AppColor.grayColor,size: 12,),
            SizedBox(height: height(context)*0.02,),
            Container(
             width: double.infinity,
             height: height(context)*0.4798,
             decoration: const BoxDecoration(
                  color: AppColor.whiteColor,
               borderRadius: BorderRadius.only(
                 topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                 ),
                  ),
            child: Padding(
              padding: EdgeInsets.only(top:width(context)*0.02,),
              child: Column(
                children: [
                  CustomProfileRow(text: LocaleKeys.presonalInfo.tr(), img: AppImages.data,ontap: (){
                    Navigator.pushNamed(context, AppRoutes.personalInfo);
                  },),
                  CustomProfileRow(text: LocaleKeys.myOrders.tr(), img: AppImages.orders,ontap: (){},),
                  CustomProfileRow(text: LocaleKeys.history.tr(), img: AppImages.history,ontap: (){},),
                  CustomProfileRow(text: LocaleKeys.settings.tr(), img: AppImages.settings,ontap: (){},),
                  CustomProfileRow(text: LocaleKeys.FAQ.tr(), img: AppImages.question,ontap: (){},),
                  CustomProfileRow(text: LocaleKeys.helpCen.tr(), img: AppImages.help,ontap: (){},),
                  CustomProfileRow(text: LocaleKeys.logout.tr(), img: AppImages.logout,ontap: (){},),


                ],
              ),
            ),
            ),
          ],
        ),
      ),

    );

  }
}
