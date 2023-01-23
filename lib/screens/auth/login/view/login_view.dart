import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';
import 'package:mwassim/component/style/fonts.dart';

import '../../../../component/style/colors.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../core/local/cach_helper.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../../../utilities/routes.dart';
import '../../choose_auth/widgets/custom_btn.dart';
import '../../widgets/custom_btn.dart';
import '../../widgets/text_field.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.loginBack),fit: BoxFit.fill),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height(context)*0.05,right:height(context)*0.04,left: height(context)*0.04 ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: LocaleKeys.welcomAg.tr(), color: AppColor.primaryColor,size: AppFonts.t5,),
                  SizedBox(height: height(context)*0.018,),
                  CustomText(text: LocaleKeys.conLogin.tr(), color: AppColor.secondryColor,size: AppFonts.t6),
                  SizedBox(height: height(context)*0.05,),
                  CustomText(text:"___${LocaleKeys.log.tr()}", color: AppColor.primaryColor,size: AppFonts.t5),
                  SizedBox(height: height(context)*0.03,),
                  CustomFormField(hint:LocaleKeys.email.tr() ,save:(val){} ,vali: (vali){},pre:Icons.email_outlined ,),
                  SizedBox(height: height(context)*0.028,),
                  CustomFormField(hint:LocaleKeys.password.tr() ,save:(val){} ,vali: (vali){},pre:Icons.lock_outline ,),
                  SizedBox(height: height(context)*0.02,),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, AppRoutes.forgetPass);
                    },
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: CustomText(text: LocaleKeys.forgPass.tr(), color: AppColor.primaryColor)),
                  ),
                  SizedBox(height: height(context)*0.03,),
                  Center(child: AuthCustomBtn(text: LocaleKeys.enter.tr(),ontap: (){},)),
                  SizedBox(height: height(context)*0.02,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CustomText(text:
                    CacheHelper.getData(key: 'appLang')=='ar'? 'ليس لدي حساب ':LocaleKeys.notAccount.tr(), color: AppColor.primaryColor),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushReplacementNamed(context,
                              AppRoutes.register);
                        },
                        child: CustomText(text: LocaleKeys.newAcc.tr(), color: AppColor.secondryColor, deco:TextDecoration.underline ,)),


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
