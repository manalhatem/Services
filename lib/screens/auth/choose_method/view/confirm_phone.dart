import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../component/custom_text.dart';
import '../../../../component/style/colors.dart';
import '../../../../component/style/fonts.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../../../utilities/routes.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/text_field.dart';
class ConfirmPhone extends StatelessWidget {
  const ConfirmPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.backPhone),fit: BoxFit.fill),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height(context)*0.08,right:height(context)*0.04,left: height(context)*0.04 ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: LocaleKeys.welcome2.tr(), color: AppColor.primaryColor,size: AppFonts.t5,),
                  SizedBox(height: height(context)*0.018,),
                  CustomText(text: LocaleKeys.regDone.tr(), color: AppColor.secondryColor,size: AppFonts.t6),
                  SizedBox(height: height(context)*0.09,),
                  Center(child: CustomText(text:LocaleKeys.enterph.tr(), color: AppColor.primaryColor,size: AppFonts.t8)),
                  SizedBox(height: height(context)*0.03,),
                  CustomFormField(hint:LocaleKeys.phone.tr() ,save:(val){} ,vali: (vali){},pre:Icons.phone_android ,),
                  SizedBox(height: height(context)*0.05,),
                  Center(child: AuthCustomBtn(text: LocaleKeys.sent.tr(),ontap: (){
                    Navigator.pushNamed(context, AppRoutes.confirmCode);
                  },)),
                  SizedBox(height: height(context)*0.04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text:'لم يتم الارسال  ', color: AppColor.primaryColor),
                      GestureDetector(
                          onTap: (){
                          },
                          child: CustomText(text: "اعادة المحاوله", color: AppColor.secondryColor, deco:TextDecoration.underline ,)),


                    ],
                  )


                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
