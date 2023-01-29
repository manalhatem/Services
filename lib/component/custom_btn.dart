import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import 'custom_text.dart';
import 'style/colors.dart';
class CustomBtn extends StatelessWidget {
   CustomBtn({Key? key, this.ontap, required this.text}) : super(key: key);
  void Function()? ontap;
  String text;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width(context)*.8,
        height: height(context)*0.062,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(5)
        ),
        child: CustomText(text:text , color: AppColor.whiteColor,size: 14,),
      ),
    );
  }
}
