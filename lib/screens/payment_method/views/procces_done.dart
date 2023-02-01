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
class ProccessDone extends StatelessWidget {
  const ProccessDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Padding(
        padding: EdgeInsets.only(top: height(context) * 0.05,right:height(context)*0.02,left: height(context)*0.02 ),
    child: SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
      children: [
            Align(
              alignment: Alignment.topRight,
              child: Row(
                 children: [
                   GestureDetector(
                onTap: ()=>Navigator.pop(context),
                 child: Container(
                    padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                        color: AppColor.grayColor.withOpacity(.2)),
                     child: Transform.rotate(
                       angle: pi,
                         child: Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                  ),
                   ),
                SizedBox(width: width(context)*0.045,),
        ],),
            ),
           SizedBox(height: height(context)*0.08,),
           Image.asset(AppImages.pay4, width: width(context)*0.5,),
           SizedBox(height: height(context)*0.08,),
          CustomText(text:  LocaleKeys.transferDone.tr(), color: AppColor.secondryColor, fontfam: 'GeMed',size: 20,),
          SizedBox(height: height(context)*0.1,),
          CustomBtn(text: LocaleKeys.backHome.tr(),ontap: (){
            Navigator.pushNamed(context, AppRoutes.btnNav);
          },)



      ])))));
  }
}
