import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class CustomerView extends StatelessWidget {
  const CustomerView({Key? key}) : super(key: key);

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
                  CustomText(text:LocaleKeys.customer.tr() , color: AppColor.primaryColor,size: 20,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.05,),
              Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 6,
                  crossAxisSpacing: 6
                ),
                    itemCount: 6,
                    itemBuilder: (context, index){
                  return Column(
                    children: [
                      Image.asset(AppImages.customerName,width: width(context)*0.28,),
                      CustomText(text: 'اسم العميل', color: AppColor.secondryColor),
                    ],
                  );
                }),
              ),
              CustomText(text:'المزيد من العملاء ', color:AppColor.primaryColor ),
              SizedBox(height: height(context)*0.025,),
              Image.asset(AppImages.moreCustom,width: width(context)*.17,),
              SizedBox(height: height(context)*0.015,),


            ],
          ),
        ),
      ),
    );
  }
}
