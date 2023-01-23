import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../component/custom_text.dart';
import '../../../../component/style/colors.dart';
import '../../../../component/style/fonts.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../../../utilities/routes.dart';
import '../../widgets/custom_container.dart';
class ChooseMethodView extends StatelessWidget {
  const ChooseMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.chooseMethodBackground),fit: BoxFit.fill),
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
                  SizedBox(height: height(context)*0.08,),
                  CustomText(text:LocaleKeys.chText.tr(), color: AppColor.primaryColor,size: AppFonts.t8),
                  SizedBox(height: height(context)*0.03,),
                  CustomContainer(tap: (){
                    Navigator.pushNamed(context, AppRoutes.confirmPhone);
                  }, image: AppImages.phone,
                      text1: LocaleKeys.phone.tr(), text2: LocaleKeys.enterph.tr()),
                  SizedBox(height: height(context)*0.03,),
                  CustomContainer(tap: (){
                    Navigator.pushNamed(context, AppRoutes.confirmEmail);
                  }, image: AppImages.email,
                      text1: LocaleKeys.email.tr(), text2: LocaleKeys.enterEmail.tr()),


                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
