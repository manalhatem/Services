import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';


class CustomContainer extends StatelessWidget {
  void Function()? tap;
  String image;
  String text1;
  CustomContainer({Key? key,required this.tap, required this.image,required this.text1}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:tap,
      child:DottedBorder(
        color: AppColor.secondryColor,
        strokeWidth: 1,
        radius: const Radius.circular(25),
        child: Container(
          width: width(context)*.4,
          color: AppColor.textFieldBGColor,
          padding:const EdgeInsets.all(18),
          child: Column(
            children: [
              Image.asset(image,width: width(context)*0.15,),
              SizedBox(height: height(context)*.02,),
              CustomText(
                text: text1,
                align: TextAlign.center,
                color: AppColor.secondryColor,
                fontfam:'GeLight',
                size: 16,),

            ],
          ),

        ),
      ),
    );

  }
}

