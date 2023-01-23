import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';

import '../../../../component/style/colors.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../translation/locale_keys.g.dart';
class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.loginBack),fit: BoxFit.fill),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height(context)*0.05,right:height(context)*0.04,left: height(context)*0.04 ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text: LocaleKeys.welcomAg.tr(), color: AppColor.primaryColor),
                SizedBox(height: height(context)*0.015,),
                CustomText(text: LocaleKeys.conLogin.tr(), color: AppColor.secondryColor),
                SizedBox(height: height(context)*0.045,),
                CustomText(text:"___${LocaleKeys.log.tr()}", color: AppColor.primaryColor),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColor.textColor)
                    )
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
