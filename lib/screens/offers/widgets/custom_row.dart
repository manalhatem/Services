import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/images.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';


class CustomOfferRow extends StatelessWidget {
  void Function()? tap;
  String text1;
  CustomOfferRow({Key? key,required this.tap,required this.text1}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:tap,
      child: DottedBorder(
        color: AppColor.secondryColor,
        strokeWidth: 1,
        radius: const Radius.circular(20),
        child: Container(
          color: AppColor.textFieldBGColor,
          padding: EdgeInsets.symmetric(horizontal: height(context)*0.02,vertical:height(context)*0.013  ),
          child: Row(
            children: [
              CustomText(
                text: text1,
                color: AppColor.primaryColor,
                size: 14,),
              Spacer(),
              Image.asset(AppImages.nexxt,width: width(context)*0.075,),
            ],
          ),

        ),
      ),
    );

  }
}

