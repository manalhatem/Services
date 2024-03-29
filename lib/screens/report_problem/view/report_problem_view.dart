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
class ReportProblem extends StatelessWidget {
  const ReportProblem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.drawerBg), fit: BoxFit.fill),
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: height(context)*0.076),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right:height(context)*0.03,left: height(context)*0.03),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: ()=>Navigator.pop(context),
                      child: Container(
                        padding: const EdgeInsets.all(7),
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
                    CustomText(text: 'الابلاغ عن مشكله', color: AppColor.whiteColor,size: 20,fontfam: 'GeLight',),
                  ],
                ),
              ),
              SizedBox(height: height(context)*0.05,),
              Container(
                width: double.infinity,
                height: height(context)*0.8175,
                decoration: const BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(right: width(context)*0.06 ,left:width(context)*0.06   ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: height(context)*0.01,horizontal:width(context)*0.01, ),
                              decoration: BoxDecoration(
                                color: AppColor.grayColor.withOpacity(.3),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              width: width(context)*.5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomText(text: LocaleKeys.orderNum.tr(), color: AppColor.primaryColor,size: 13,),
                                  CustomText(text: '#1234567', color: AppColor.secondryColor,size: 12,),
                                ],
                              ),
                            ),
                            Image.asset('assets/images/repP.png',width: width(context)*0.3,),
                          ],
                        ),
                        CustomText(text: '${LocaleKeys.problemName.tr()} :' , color: AppColor.primaryColor),
                        SizedBox(height: height(context)*0.01,),
                        CustomFormField(hint:LocaleKeys.problemName.tr(),),
                        SizedBox(height: height(context)*0.01,),
                        CustomText(text: LocaleKeys.description.tr(), color: AppColor.primaryColor),
                        SizedBox(height: height(context)*0.01,),
                        CustomFormField(hint:'كتابة الوصف هنا .....' ,max: 4,),
                        SizedBox(height: height(context)*0.01,),
                        CustomText(text: '${LocaleKeys.attacImage.tr()} :', color: AppColor.primaryColor),
                        SizedBox(height: height(context)*0.01,),
                        CustomFormField(hint:LocaleKeys.problemImage.tr(),sifix: Transform.scale(
                            scale: .5,
                            child: Image.asset('assets/images/att.png',)),),
                        SizedBox(height: height(context)*0.05,),
                        CustomBtn(text: LocaleKeys.sent.tr(),)



                      ],
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
