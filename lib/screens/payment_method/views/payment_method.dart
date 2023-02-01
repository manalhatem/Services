import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../auth/widgets/custom_container.dart';
import 'bank_transfer.dart';
class PaymentMethodView extends StatelessWidget {
  const PaymentMethodView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top: height(context)*0.05,right:height(context)*0.04,left: height(context)*0.04 ),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(width: width(context)*0.045,),
                    CustomText(text: LocaleKeys.payType.tr(), color: AppColor.primaryColor,size:19,fontfam: 'GeLight',),
                  ],
                ),
                SizedBox(height: height(context)*0.08,),
                CustomContainer(tap: (){
                  // Navigator.pushNamed(context, AppRoutes.confirmPhone);
                }, image: AppImages.pay1,
                    text1: 'الدفع النقدي ', text2: 'الدفع عند استلام الخدمه نقدا .'),
                SizedBox(height: height(context)*0.03,),
                CustomContainer(tap: (){
                  // Navigator.pushNamed(context, AppRoutes.confirmEmail);
                }, image: AppImages.pay2,
                    text1:'الدفع الالكتروني ', text2: 'الدفع عن طريق البطاقات الالكترونية .'),
                SizedBox(height: height(context)*0.03,),
                CustomContainer(tap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return BankTransfer();

                 }));
                }, image: AppImages.pay3,
                    text1: 'التحويل البنكي ', text2: ' الدفع عن طريق التحويل المصرفي .'),


              ],
            ),
          ),
        ),

      ),
    );
  }
}
