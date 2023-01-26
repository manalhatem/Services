import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
class CustomProblem extends StatelessWidget {
   const CustomProblem({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context, AppRoutes.problemDetailsScreen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height(context)*0.027,horizontal: height(context)*0.02),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColor.grayColor.withOpacity(.1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(text:LocaleKeys.problemName.tr() , color: AppColor.primaryColor,size: 16,),
                CustomText(text: '26 - يناير 2023 ', color: AppColor.grayColor,size: 14,)
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: height(context)*0.015,horizontal: height(context)*0.03),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColor.btnColor.withOpacity(0.8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.check,color: AppColor.whiteColor,),
                  CustomText(text:" ${LocaleKeys.Solve.tr()} ", color: AppColor.whiteColor,size: 14,)

                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
