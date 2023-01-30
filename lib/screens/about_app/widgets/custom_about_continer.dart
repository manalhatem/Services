import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class CustomAboutContainer extends StatelessWidget {
   CustomAboutContainer({Key? key, required this.text1, required this.text2}) : super(key: key);
  String text1;
  String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context)*.9,
      padding: EdgeInsets.symmetric(vertical: height(context)*0.02, horizontal: width(context)*0.08),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColor.secondryColor)
      ),
      child: Column(
        children: [
          CustomText(text:text1 , color: AppColor.secondryColor),
          CustomText(text:text2, color: AppColor.grayColor,size: 12,align: TextAlign.center,),
        ],
      ),
    );
  }
}
