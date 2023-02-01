import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_btn.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../auth/widgets/text_field.dart';
import 'procces_done.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
           padding: EdgeInsets.only(top: height(context) * 0.05,right:height(context)*0.02,left: height(context)*0.02 ),
              child: SingleChildScrollView(
                   physics: const BouncingScrollPhysics(),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Row(
                      children: [
                       GestureDetector(
                         onTap: ()=>Navigator.pop(context),
                         child: Container(
                          padding: const EdgeInsets.all(7),
                           decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColor.grayColor.withOpacity(.2)
                               ),
                           child: Transform.rotate(
                             angle: pi,
                              child: Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                             ),
                            ),
                       SizedBox(width: width(context)*0.045,),
                        CustomText(text: 'التحويل االبنكي', color: AppColor.primaryColor,size:19,fontfam: 'GeLight',),
                      ],),
                     SizedBox(height: height(context)*0.08,),
                     CustomFormField(hint: LocaleKeys.userName.tr(),),
                     SizedBox(height: height(context)*0.02,),
                     CustomFormField(hint: LocaleKeys.trDate.tr(),sifix: IconButton(
                       onPressed: (){},
                       icon: const Icon(Icons.calendar_month_outlined,color: Colors.yellow,),
                     ),),
                     SizedBox(height: height(context)*0.02,),
                     CustomFormField(hint: LocaleKeys.trName.tr(),),
                     SizedBox(height: height(context)*0.02,),
                     CustomFormField(hint: LocaleKeys.phone.tr(),),
                     SizedBox(height: height(context)*0.02,),
                     CustomFormField(hint: LocaleKeys.formImage.tr(),
                       sifix: IconButton(
                         onPressed: (){},
                         icon: const Icon(Icons.image_outlined,color: Colors.yellow,),
                       ),),
                     SizedBox(height: height(context)*0.02,),
                     CustomFormField(hint: LocaleKeys.notes.tr(),max:5),
                     SizedBox(height: height(context)*0.02,),
                     CustomBtn(text: LocaleKeys.sent.tr(),ontap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return ProccessDone();
                       }));
                     },),

                   ])))))

    ;
  }
}
