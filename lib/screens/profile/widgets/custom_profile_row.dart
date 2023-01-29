import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class CustomProfileRow extends StatelessWidget {
   CustomProfileRow({Key? key, this.ontap,required this.text,required this.img}) : super(key: key);

  void Function()? ontap;
  String img;
  String text;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding:  EdgeInsets.only(top:width(context)*0.05,right: width(context)*0.09,left: width(context)*0.09, ),
        child: Row(
          children: [
            Image.asset(img,width: width(context)*0.07,),
            SizedBox(width: width(context)*0.04,),
            Padding(
              padding:  EdgeInsets.only(top:width(context)*0.01,),
              child: CustomText(text: text, color: AppColor.secondryColor,size: 16,fontfam: 'GeLight',),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(top:width(context)*0.02,),
              child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey.withOpacity(.8),size: 20,),
            ),
          ],
        ),
      ),
    );
  }
}
