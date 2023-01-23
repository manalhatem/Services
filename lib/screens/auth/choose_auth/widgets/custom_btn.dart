import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../../component/custom_text.dart';
import '../../../../component/style/colors.dart';
import '../../../../component/style/size.dart';
import '../../../../translation/locale_keys.g.dart';
class CustomBtn extends StatelessWidget {
   CustomBtn({Key? key,required this.text, this.ontap}) : super(key: key);
  void Function()? ontap;
  String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical:height(context)*0.0145,horizontal:height(context)*0.11 ),
        decoration: BoxDecoration(
            color: AppColor.btnColor,
            borderRadius: BorderRadius.circular(5)
        ),
        child: CustomText(text: text,color: Colors.white,),
      ),
    );
  }
}
