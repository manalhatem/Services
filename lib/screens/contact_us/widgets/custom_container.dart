import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
class CustomContainer extends StatelessWidget {
   CustomContainer({Key? key, required this.img, required this.text}) : super(key: key);

  String img;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context)*.25,
      height: width(context)*.25,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColor.whiteColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(img,width: width(context) *.07,),
          SizedBox(height: height(context)*0.01,),
          CustomText(text: text, color: AppColor.primaryColor,size: 12,)
        ],
      )
      ,
    );
  }
}
