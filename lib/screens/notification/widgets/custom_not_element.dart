import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
class CustomNotificationElement extends StatelessWidget {
  const CustomNotificationElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:height(context)*0.01,vertical: height(context)*0.001 ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 38,
            backgroundImage: AssetImage(AppImages.clean),
          ),
          SizedBox(width: width(context)*0.03,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: height(context)*.03),
                child: Container(
                  height:height(context)*0.1,
                  width: width(context)*0.64,
                  child: CustomText(
                      size: 12,
                      text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربي', color: AppColor.primaryColor),
                ),
              ),
              CustomText(text: '12:35 م', color: AppColor.secondryColor,size: 12,),

            ],
          ),
        ],
      ),
    );
  }
}
