import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';
import 'package:mwassim/component/style/images.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/style/colors.dart';
import '../../../translation/locale_keys.g.dart';
class ServiceDetailsView extends StatelessWidget {
  const ServiceDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> servics=[
      'التنظيف باستخدام معدات فائقة الجوده',
      'التنظيف باستخدام المواد الآمنة والغير ضارة دون إزعاج',
      'أجهزة ومعدات ومواد التعقيم الخاصة توفر لك السلامة',
      'تنظيف كافة أنواع الزجاج والمرايا لنعطي مظهر أكثر نظافة'
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: height(context)*0.4,
                width: double.infinity,
                decoration:const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.cleanglss,),fit: BoxFit.fill),
              ) ,),
              Positioned(
                top: height(context)*0.08,
                right: height(context)*0.02,
                child: GestureDetector(
                  onTap: ()=>Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColor.grayColor.withOpacity(.1)
                    ),
                    child: Transform.rotate(
                        angle: pi,
                        child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height(context)*0.022,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context)*0.033),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                      Icon(Icons.star,color: AppColor.textColor,),
                      SizedBox(width: width(context)*0.02,),
                      CustomText(text: '5.4', color: AppColor.grayColor,fontWeight: FontWeight.bold,size: 18,),
                      SizedBox(width: width(context)*0.04,),
                      CustomText(text: '(تقييم 120  )', color: AppColor.grayColor,size: 16,),
                    ],),
                    SizedBox(height: height(context)*0.01,),
                    CustomText(text: 'تنظيف الواجهات الزجاجيه', color: AppColor.primaryColor,size: 18,fontfam: 'GeLight',fontWeight: FontWeight.bold,),
                    SizedBox(height: height(context)*0.01,),
                    CustomText(text: '25,.. رس', color: AppColor.priceColor,size: 16,fontfam: 'GeLight',),
                  ],
                ),
                const Spacer(),
                Image.asset(AppImages.addOrder,width: width(context)*0.15,),
              ],
            ),),
          Container(
            padding: EdgeInsets.all(height(context)*0.02),
            child: Text(
              'نظراً لأن تنظيف الواجهات الـزجاجـيـة للمـبـانـي والشـركات لا يمكن أن يتم بـدون الإسـتعانـة بمتخصـصيـن الوجود الـكـثـيـر من المخاطـر ويـحتاج لعمالة مـدربة على العمل في الارتفاعات الكبيرة من خـلال رافعات المعـدة خصيصاً لهـذا الغرض لذلك فنحن نقدم لكم خـدمة تنظيف الـ واجـهـات الــزجـــاجــية عن طريق مجموعة كبيرة. من المـتـخـصصـين والـعـمــال المـــدربـيـن على تـنـظـيـف الواجهات الزجاجية'
            ,style: TextStyle(color: Colors.grey.withOpacity(1),fontSize: 12,fontFamily: 'GeLight'),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width(context)*0.033),
            child: CustomText(text: "${LocaleKeys.Servicefeatures.tr()} :",color: AppColor.primaryColor,fontfam:'GeLight' ,size: 18,),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
                itemCount: 4,
                itemBuilder: (context, index){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: height(context)*0.02,vertical:index==0? 0.0: height(context)*0.009 ),
                child: Container(
                  padding: EdgeInsets.all( height(context)*0.01),
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: width(context)*0.025,),
                      Image.asset(AppImages.trueee, width: width(context)*0.055,),
                      SizedBox(width: width(context)*0.025,),
                      CustomText(text: servics[index] ,size: 12, color: AppColor.secondryColor,max: 2,),
                    ],
                  ),
                ),
              );

            }),
          ),


      ],),
    );
  }
}
