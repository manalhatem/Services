import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
class HelpCenterView extends StatelessWidget {
  const HelpCenterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
          padding: EdgeInsets.only(top:height(context)*0.045,left:height(context)*0.018,right: height(context)*0.02,  ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
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
                              CustomText(text: LocaleKeys.helpCen.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                                 ],),
                        ),
                         SizedBox(height: height(context)*0.02,),
                         CustomText(text: 'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.ومن هنا وجب على المصمم أن يضع نصوصا مؤقتة على التصميم ليظهر للعميل الشكل كاملاً،دور مولد النص العربى أن يوفر على المصمم عناء البحث عن نص بديل لا علاقة له بالموضوع الذى يتحدث عنه التصميم فيظهر بشكل لا يليق.هذا النص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو وكأنه نص منسوخ، غير منظم، غير منسق، أو حتى غير مفهوم. لأنه مازال نصاً بديلاً ومؤقتاً هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى.هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، النص لن يبدو مقسما ولا يحوي أخطاء لغوية، مولد النص العربى مفيد لمصممي المواقع على وجه الخصوص، حيث يحتاج العميل فى كثير من الأحيان أن يطلع على صورة حقيقية لتصميم الموقع.ومن هنا وجب على المصمم أن يضع نصوصا',
                             color: AppColor.grayColor,align: TextAlign.right,size: 13,)

                       ])))));
  }
}
