import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../component/custom_btn.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../auth/widgets/text_field.dart';
import '../widgets/custom_container.dart';
class ContactUsView extends StatelessWidget {
  const ContactUsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.drawerBg), fit: BoxFit.fill),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(top: height(context)*0.082),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right:height(context)*0.03,left: height(context)*0.03),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: ()=>Navigator.pop(context),
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: const Border(
                              top: BorderSide(color: AppColor.whiteColor),
                              left:  BorderSide(color: AppColor.whiteColor),
                              right:  BorderSide(color: AppColor.whiteColor),
                              bottom:  BorderSide(color: AppColor.whiteColor),
                            ),
                          ),
                          child: Transform.rotate(
                              angle: pi,
                              child: const Icon(Icons.arrow_forward_ios, color: AppColor.whiteColor,)),
                        ),
                      ),
                      SizedBox(width: width(context)*0.05,),
                      CustomText(text: LocaleKeys.contactUs.tr(), color: AppColor.whiteColor,size: 20,fontfam: 'GeLight',),
                      const Spacer(),
                      Image.asset(AppImages.i,width: width(context)*0.09,),
                    ],
                  ),
                ),
                SizedBox(height: height(context)*0.04,),
                Image.asset('assets/images/contact.png',width: width(context)*0.55,),
                SizedBox(height: height(context)*0.03,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomContainer(img: AppImages.mob, text: LocaleKeys.phone2.tr(),),
                    CustomContainer(img: AppImages.mail, text: LocaleKeys.email.tr(),),
                    CustomContainer(img: AppImages.loc, text: LocaleKeys.location.tr(),),
                  ],
                ),
                SizedBox(height: height(context)*0.03,),
                Container(
                  width: double.infinity,
                  height: height(context)*0.5075,
                  decoration: const BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: height(context)*.03,left:width(context)*.04,right:width(context)*.04),
                    child: Column(
                      children: [
                        CustomText(text: LocaleKeys.sentMe.tr(), color: AppColor.primaryColor,size: 18,),
                        SizedBox(height:  height(context)*.03,),
                        CustomFormField(hint:LocaleKeys.userName.tr() ,textcol: AppColor.primaryColor,),
                        SizedBox(height:  height(context)*.02,),
                        CustomFormField(hint:LocaleKeys.email.tr() ,textcol: AppColor.primaryColor,),
                        SizedBox(height:  height(context)*.02,),
                        CustomFormField(hint:LocaleKeys.message.tr() ,textcol: AppColor.primaryColor,max: 3,),
                        SizedBox(height:  height(context)*.02,),
                        CustomBtn(text: LocaleKeys.sent.tr() ,ontap: (){},)
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
