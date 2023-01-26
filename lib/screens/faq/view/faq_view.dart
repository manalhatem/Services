import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class FaqView extends StatelessWidget {
  const FaqView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
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
                    CustomText(text: LocaleKeys.FAQ.tr(), color: AppColor.whiteColor,size: 20,fontfam: 'GeLight',),
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
