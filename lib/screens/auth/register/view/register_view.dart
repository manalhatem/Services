import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../component/custom_text.dart';

import '../../../../component/style/colors.dart';
import '../../../../component/style/fonts.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../core/local/cach_helper.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../../../utilities/routes.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/text_field.dart';
class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.registerBack),fit: BoxFit.fill),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height(context)*0.05,right:height(context)*0.04,left: height(context)*0.04 ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: LocaleKeys.welcome.tr(), color: AppColor.primaryColor,size: AppFonts.t5,),
                  SizedBox(height: height(context)*0.018,),
                  CustomText(text: LocaleKeys.welcomecr.tr(), color: AppColor.secondryColor,size: AppFonts.t6),
                  SizedBox(height: height(context)*0.05,),
                  CustomText(text:"___ ${LocaleKeys.newAcc.tr()}", color: AppColor.primaryColor,size: AppFonts.t5),
                  SizedBox(height: height(context)*0.03,),
                  CustomFormField(hint:LocaleKeys.userName.tr() ,save:(val){} ,vali: (vali){},pre:Icons.person_outline_outlined ,),
                  SizedBox(height: height(context)*0.02,),
                  CustomFormField(hint:LocaleKeys.phone.tr() ,save:(val){} ,vali: (vali){},pre:Icons.phone_android ,),
                  SizedBox(height: height(context)*0.02,),
                  CustomFormField(hint:LocaleKeys.email.tr() ,save:(val){} ,vali: (vali){},pre:Icons.email_outlined ,),
                  SizedBox(height: height(context)*0.02,),
                  CustomFormField(hint:LocaleKeys.password.tr() ,save:(val){} ,vali: (vali){},pre:Icons.lock_outline ,),
                  SizedBox(height: height(context)*0.02,),
                  CustomFormField(hint:LocaleKeys.confPass.tr() ,save:(val){} ,vali: (vali){},pre:Icons.lock_outline ,),
                  SizedBox(height: height(context)*0.02,),
                  Center(child: AuthCustomBtn(text: LocaleKeys.newAccount.tr(),ontap: (){
                    Navigator.pushReplacementNamed(context, AppRoutes.chooseMethod);
                  },)),
                  SizedBox(height: height(context)*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(text:
                     LocaleKeys.haveAcc.tr(), color: AppColor.primaryColor),
                      GestureDetector(
                          onTap: (){
                            Navigator.pushReplacementNamed(context, AppRoutes.login);

                          },
                          child: CustomText(text: LocaleKeys.log.tr(), color: AppColor.secondryColor, deco:TextDecoration.underline ,)),


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
