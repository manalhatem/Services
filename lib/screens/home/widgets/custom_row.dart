import 'package:flutter/material.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/size.dart';

Widget CustomRowBtn(
    {double? widdth,Color? btnColor,String? title, GestureTapCallback? onTap, String? prefxIcon,bool ?withArrow=true,Color?titleColor, bool? fromProfile = true,
      EdgeInsets? padding,required context
    }) {
  return InkWell(
      onTap: onTap!,
      child: Container(
        width: widdth ??  width(context),
        decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(10)
        ),
        padding: padding ??  EdgeInsets.symmetric(vertical: height(context)*.02, horizontal: height(context)*.01),
        child: Row(
          mainAxisAlignment: fromProfile! ? MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Image.asset(
                  prefxIcon!,
                  width: width(context)*.07,
                ),
                SizedBox(
                  width:  width(context)*.05,
                ),
                CustomText(
                  text: title!,
                  color: titleColor==null?AppColor.primaryColor:titleColor,
                  size: AppFonts.t2,
                ),
              ],
            ),
            withArrow==true? const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 20,
              color: AppColor.grayColor,
            ):const SizedBox()
          ],
        ),
      ));
}