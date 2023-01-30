import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';


class CustomContainer extends StatelessWidget {
  void Function()? tap;
  bool choose;
  String text1;
  CustomContainer({Key? key,required this.tap, required this.choose,required this.text1}) : super(key: key);


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
              CustomText(
                text: text1,
                color:choose? AppColor.primaryColor: AppColor.secondryColor,
                size: 14,),
              const Spacer(),
              choose?Image.asset(AppImages.verify,width: width(context)*0.06,):const SizedBox()
            //  Image.asset(image,width: width(context)*0.1,),

            ],
          ),

        ),
      ),
    );

  }
}

