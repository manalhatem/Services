import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';

import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class ManagerWord extends StatelessWidget {
  const ManagerWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           body: Container(
             width: width(context),
             decoration: const BoxDecoration(
              image: DecorationImage(
                     image: AssetImage(AppImages.introBack),
                        fit: BoxFit.fill,
                       ),
                         ),
               child: Column(
                   children: [
                     Padding(
                       padding: EdgeInsets.only(right: width(context)*0.05,top: height(context)*0.07),
                       child: Align(
                         alignment: Alignment.topRight,
                         child: GestureDetector(
                           onTap: ()=>Navigator.pop(context),
                           child: Container(
                             padding: const EdgeInsets.all(7),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(5),
                                 color: AppColor.grayColor.withOpacity(.12)
                             ),
                             child: Transform.rotate(
                                 angle: pi,
                                 child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: height(context)*0.03,),
                     Image.asset(AppImages.manager,width: width(context)*0.44,),
                     SizedBox(height: height(context)*0.03,),
                     CustomText(text: LocaleKeys.mangerPosition.tr(), color: AppColor.secondryColor),
                     CustomText(text: LocaleKeys.IntroSub1.tr(), color: AppColor.primaryColor),
                     Padding(
                       padding:  EdgeInsets.symmetric(horizontal: width(context)*0.04,vertical:height(context)*0.03 ),
                       child: CustomText(text: 'مواسم الخدمات هي شركة وطنية متخصصة في تقديم خدمات النظافة والحاويات والصيانة. وتقدم لكم هذه الخدمات بمعايير عالية وعن طريق عمالة متخصصة في هذا المجال لها خبرة واسعة خولتها لإظهار الإحترافية والدقة في نتائجها دائماً. نحن في مواسم  نسعى لأن نكون بين نخبه الشركات التي تهتم وتعتني بعملائها لربط رضاهم بنجاحنا الدائم. خدماتنا لا تقتصر على تنفيذ العمل فقط بل نمتلك فريق متخصص للرد على استفساراتكم ومتابعة ملاحظاتك قبل وأثناء وبعد انتهاء العمل وذلك للحصول  على الدرجة القصوى من الرضا نفتخر بكم وتذكروا دائما  أننا نسعى للأفضل',
                           color: AppColor.grayColor,align: TextAlign.center,size: 12,),
                     ),
                     CustomText(text: 'محمد عبدالله سلومه ', color: AppColor.primaryColor),
                     CustomText(text: LocaleKeys.mangerPosition.tr(), color: AppColor.textColor),






                   ])));
  }
}
