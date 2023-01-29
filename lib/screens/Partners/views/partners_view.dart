import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/images.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class PartnersScreen extends StatelessWidget {
  const PartnersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top:height(context)*0.05,left:height(context)*0.035,right: height(context)*0.035,  ),
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
                          child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,size: 22,)),
                    ),
                  ),
                  SizedBox(width: width(context)*0.05,),
                  CustomText(text:LocaleKeys.part.tr() , color: AppColor.primaryColor,size: 20,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.06,),
              Stack(
                children: [
                  SizedBox(height: height(context)*.58,width: width(context)*0.78,
                  ),
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.asset(AppImages.partBg,width:width(context)*0.75 ,)),
                  Container(
                    width: width(context)*0.7,
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.secondryColor),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: height(context)*0.03,),
                        Image.asset(AppImages.companyName, width: width(context)*0.3,),
                        SizedBox(height: height(context)*0.06,),
                        CustomText(text: 'اسم الشركة ', color:AppColor.primaryColor ),
                        SizedBox(height: height(context)*0.01,),
                        CustomText(text: 'تخصص او مجال الشركه ', color: AppColor.secondryColor),
                        SizedBox(height: height(context)*0.07,),
                        Padding(
                          padding: EdgeInsets.all(height(context)*.014),
                          child: Row(
                            children: [
                              Container(
                                height: 2,
                                width: width(context)*.25,
                                decoration: BoxDecoration(
                                    color: AppColor.grayColor.withOpacity(.3)
                                ),
                              ),
                              CustomText(text: LocaleKeys.contact.tr(), color:AppColor.primaryColor ),
                              Container(
                                height: 2,
                                width: width(context)*.25,
                                decoration: BoxDecoration(
                                    color: AppColor.grayColor.withOpacity(.3)
                                ),
                              ),


                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(AppImages.face,width: width(context)*0.11,),
                            Image.asset(AppImages.twitter,width: width(context)*0.11,),
                            Image.asset(AppImages.insta,width: width(context)*0.11,),

                          ],),
                        SizedBox(height: height(context)*0.03,),


                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: height(context)*0.03,),
              CustomText(text: LocaleKeys.morePrt.tr(), color:AppColor.primaryColor ),
              SizedBox(height: height(context)*0.03,),
              Image.asset(AppImages.morePart,width: width(context)*.17,),



            ],
          ),
        ),
      ),
    );
  }
}
