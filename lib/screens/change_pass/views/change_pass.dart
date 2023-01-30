import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_btn.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../auth/widgets/text_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: height(context) * 0.045,
              left: height(context) * 0.035,
              right: height(context) * 0.035,),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
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
                              child: Icon(
                              Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                               ),
                       ),
                        SizedBox(width: width(context) * 0.05,),
                        CustomText(text: LocaleKeys.changePass.tr(), color: AppColor.primaryColor,
                              size: 19, fontfam: 'GeLight',),
                                      ],
                                    ),
                      SizedBox(height: height(context)*0.07,),
                     CustomFormField(hint: LocaleKeys.oldPass.tr(),textcol: AppColor.primaryColor,),
                     SizedBox(height: height(context)*0.03,),
                     CustomFormField(hint: LocaleKeys.newPass.tr(),textcol: AppColor.primaryColor,),
                     SizedBox(height: height(context)*0.03,),
                     CustomFormField(hint: LocaleKeys.newPassConf.tr(),textcol: AppColor.primaryColor,),
                     SizedBox(height: height(context)*0.1,),
                     CustomBtn(text:LocaleKeys.save.tr(),ontap: (){},)

                  ]),
            ))));
  }
}
