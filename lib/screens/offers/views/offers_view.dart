import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../widgets/custom_row.dart';
class OffersView extends StatelessWidget {
   OffersView({Key? key , required this.withBack}) : super(key: key);
  bool withBack;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top:height(context)*0.05,left:height(context)*0.035,right: height(context)*0.035,  ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
               withBack? GestureDetector(
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
                  ):
               const SizedBox(),
                  SizedBox(width: width(context)*0.1,),
                  CustomText(text:LocaleKeys.offers.tr() , color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.05,),
              CustomOfferRow(tap: () {
                Navigator.pushNamed(context, AppRoutes.offersDetailsView);
              }, text1: 'اسم العرض ',),
              SizedBox(height: height(context)*0.03,),
              Image.asset(AppImages.offer1),
              SizedBox(height: height(context)*0.04,),
              CustomOfferRow(tap: () {
                Navigator.pushNamed(context, AppRoutes.offersDetailsView);
              }, text1: 'اسم العرض ',),
              SizedBox(height: height(context)*0.03,),
              Image.asset(AppImages.offer2),
            ],
          ),
        ),
      ),
    ));
  }
}
