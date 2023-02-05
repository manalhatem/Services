import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../widgets/custom_not_element.dart';
import '../widgets/custom_not_row.dart';
class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
         child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(top:height(context)*0.045,left:height(context)*0.018,right: height(context)*0.02,  ),
             child: Column(
               children: [
               Padding(
                padding: EdgeInsets.only(left:height(context)*0.02,right: height(context)*0.02,  ),
                  child: Row(
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
                        child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
    ),
    ),
                     SizedBox(width: width(context)*0.05,),
                     Padding(
                           padding: EdgeInsets.only(top:height(context)*0.011 ),
                           child: CustomText(text: LocaleKeys.notif.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',)),
                       const Spacer(),
                       Stack(
                         children: [
                           const Icon(Icons.notifications_none, color: AppColor.primaryColor,size: 40,),
                           CircleAvatar(
                             radius: 10,
                             backgroundColor: AppColor.textColor,
                             child: CustomText(text: '1',color: AppColor.whiteColor,size: 14,),
                           ),
                         ],
                       ),
                    ],),
                  ),
               CustomNotRow(text: LocaleKeys.today.tr(),),
                 Expanded(
                   child: ListView.builder(
                     physics: const BouncingScrollPhysics(),
                       itemCount: 8,
                       itemBuilder: (context, index){
                         return const CustomNotificationElement();
                       }),
                 ),



               ]))));
  }
}
