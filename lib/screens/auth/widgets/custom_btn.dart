import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
class AuthCustomBtn extends StatelessWidget {
  AuthCustomBtn({Key? key, this.text, this.ontap}) : super(key: key);
  void Function()? ontap;
  String? text;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: height(context)*0.07,vertical: height(context)*0.01),
        decoration: BoxDecoration(color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(5)),
        child: CustomText(text: text!,color: Colors.white,),
      ),
    );
  }
}
