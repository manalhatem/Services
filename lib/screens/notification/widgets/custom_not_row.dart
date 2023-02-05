import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class CustomNotRow extends StatelessWidget {
  CustomNotRow({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: height(context)*0.02,right:height(context)*0.014 ),
      child: Row(
        children: [
          CustomText(text: text, color: AppColor.grayColor),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(top: height(context)*0.005),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal:height(context)*0.018 ,vertical: height(context)*0.01),
              height: 1,
              width: width(context)*0.73,
              color: AppColor.grayColor,
            ),
          )
        ],
      ),
    );
  }
}
