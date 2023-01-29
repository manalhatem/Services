import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';
import '../../../component/custom_btn.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../translation/locale_keys.g.dart';
import '../widgets/cutom_timer.dart';
class OfferDetailsView extends StatelessWidget {
  const OfferDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(width: width(context),height: height(context)*0.45,),
              Positioned(
                  left: 0,
                  child: Image.asset(AppImages.offerBg,width: width(context)*.7)),
              Positioned(
                top: height(context)*.07,
                right: width(context)*0.05,
                child: GestureDetector(
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
              ),
              Positioned(
                  bottom: height(context)*.06,
                  right:  width(context)*0.14,
                  child: Container(
                      width: width(context)*0.7,
                      child: Image.asset(AppImages.offer1))),
            ],
          ),
          CountdownTimer(),
          SizedBox(height: height(context)*0.01,),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding:  EdgeInsets.only(right: width(context)*0.04),
                child: CustomText(text:' اسم العرض' , color: AppColor.primaryColor,size: 20,),
              )),
          SizedBox(height: height(context)*0.005,),
          Padding(
            padding: EdgeInsets.only(right: width(context)*0.04),
            child: Row(
              children: [
                CustomText(text: '30رس', color: AppColor.secondryColor,size: 20,),
                SizedBox(width: width(context)*0.07,),
                CustomText(text: '60رس', color: AppColor.grayColor,deco: TextDecoration.lineThrough,size: 19,),
              ],
            ),
          ),
          SizedBox(height: width(context)*0.01,),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 6,
                itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.only(right: width(context)*0.04),
                child: CustomText(text: ' - هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة ', color: AppColor.grayColor,size: 13,),
              );
            }),
          ),
          CustomBtn(text: 'اطلب الان !',ontap: (){},),
        ],
      ),
    );
  }
 }
