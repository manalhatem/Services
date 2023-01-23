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
class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.backChangePass),fit: BoxFit.fill),
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
                  CustomText(text: LocaleKeys.changePass.tr(), color: AppColor.secondryColor,size: AppFonts.t6),
                  SizedBox(height: height(context)*0.09,),
                  Center(child: CustomText(text:LocaleKeys.changePass.tr(), color: AppColor.primaryColor,size: AppFonts.t6)),
                  SizedBox(height: height(context)*0.03,),
                  CustomFormField(hint:LocaleKeys.newPass.tr() ,save:(val){} ,vali: (vali){},pre:Icons.lock_outline ,),
                  SizedBox(height: height(context)*0.03,),
                  CustomFormField(hint:LocaleKeys.newPassConf.tr() ,save:(val){} ,vali: (vali){},pre:Icons.lock_outline ,),
                  SizedBox(height: height(context)*0.05,),
                  Center(child: AuthCustomBtn(text: LocaleKeys.save.tr(),ontap: (){
                   Navigator.pushReplacementNamed(context, AppRoutes.login);
                  },)),


                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
