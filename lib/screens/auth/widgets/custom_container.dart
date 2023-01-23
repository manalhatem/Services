import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';


class CustomContainer extends StatelessWidget {
  void Function()? tap;
  String image;
  String text1;
  String text2;
  CustomContainer({Key? key,required this.tap, required this.image,required this.text1,required this.text2}) : super(key: key);


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
          padding:const EdgeInsets.all(18),
          child: Row(
            children: [
              Image.asset(image,width: width(context)*0.1,),
              const SizedBox(width: 18,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: text1,
                    color: AppColor.secondryColor,
                    size: 12,),
                  const SizedBox(height: 10,),
                  CustomText(
                    text: text2,
                    color: Colors.black26,
                    size: 10,),

                ],
              ),
            ],
          ),

        ),
      ),
    );

  }
}

