import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class EleGride extends StatelessWidget {
   EleGride({Key? key, required this.text,required this.img, this.onTap, required this.sel}) : super(key: key);
  void Function()? onTap;
 String img;
 String text;
 bool sel;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color:sel? AppColor.btnColor.withOpacity(.9):AppColor.btnColor.withOpacity(.25),
          borderRadius: BorderRadius.circular(10),
          //AppColor.btnColor.withOpacity(.7)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(img,width: width(context)*0.16,),
            SizedBox(height: height(context)*0.033,),
            CustomText(text:text, color: AppColor.whiteColor,size: 16,fontfam: 'GeLight',),


          ],
        ),
      ),
    );
  }


}

