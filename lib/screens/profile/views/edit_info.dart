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
class EditInfo extends StatelessWidget {
  const EditInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(top:height(context)*0.045,left:height(context)*0.035,right: height(context)*0.035,  ),
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
                            child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: height(context)*0.04,),
                Stack(
                  children: [
                    SizedBox(
                      width: width(context)*0.9,
                      height: height(context)*0.67,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: width(context)*0.9,
                        height: height(context)*0.58,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(image: AssetImage(AppImages.backData),fit: BoxFit.cover)
                        ),
                        child: Padding(
                          padding:  EdgeInsets.only(top: height(context)*0.12,right:height(context)*0.025 ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: 'اسم المستخدم:', color: AppColor.primaryColor),
                              SizedBox(height: height(context)*0.002,),
                              SizedBox(
                                width: width(context)*0.77,
                                child: CustomFormField(hint:'منال حاتم صلاح' ,pre: Icons.person_outline_outlined,
                                save: (val){},vali: (val){},col: AppColor.whiteColor,
                                textcol: AppColor.primaryColor,),
                              ),
                              SizedBox(height: height(context)*0.04,),
                              CustomText(text: 'رقم الجوال:', color: AppColor.primaryColor),
                              SizedBox(height: height(context)*0.004,),
                              SizedBox(
                                width: width(context)*0.77,
                                child: CustomFormField(hint:'010654321' ,pre: Icons.phone_android_sharp,
                                  save: (val){},vali: (val){},col: AppColor.whiteColor,
                                  textcol: AppColor.primaryColor,),
                              ),
                              SizedBox(height: height(context)*0.04,),
                              CustomText(text: 'البريد الالكتروني :', color: AppColor.primaryColor),
                              SizedBox(height: height(context)*0.004,),
                              SizedBox(
                                width: width(context)*0.77,
                                child: CustomFormField(hint: 'manal@gmail.com' ,pre: Icons.email_outlined,
                                  save: (val){},vali: (val){},col: AppColor.whiteColor,
                                  textcol: AppColor.primaryColor,),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 94,
                        child: Image.asset(AppImages.user,width: width(context)*0.33,)),

                  ],
                ),
                SizedBox(
                  height: height(context)*0.04,
                ),
                CustomBtn(text: LocaleKeys.save.tr(),ontap: (){},),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
