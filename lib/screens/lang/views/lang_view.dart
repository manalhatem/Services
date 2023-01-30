import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../core/local/cach_helper.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../controller/lang_cubit.dart';
import '../controller/lang_states.dart';
import '../widgets/custom_langrow.dart';
class LangView extends StatelessWidget {
  const LangView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LangCubit(),
        child: BlocBuilder<LangCubit,LangClass>(
        builder: (context, state){
         final cubit= LangCubit.get(context);
         return SafeArea(
          child: Scaffold(
              body: Padding(
                  padding: EdgeInsets.only(top:height(context)*0.045,left:height(context)*0.035,right: height(context)*0.035,  ),
                  child: Column(
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
                                    child:  Icon(Icons.arrow_forward_ios, color: AppColor.primaryColor,)),
                              ),
                            ),
                            SizedBox(width: width(context)*0.05,),
                            CustomText(text: LocaleKeys.lang.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                          ],
                        ),
                        SizedBox(height: height(context)*0.06,),
                        CustomContainer(tap:
                            ()async{
                          await context.setLocale(Locale('en'));
                          CacheHelper.saveData('appLang', 'en');
                          Navigator.pushReplacementNamed(context, AppRoutes.btnNav);
                          cubit.changtoarabic(true);
                        },
                        choose: cubit.arabicLang, text1: 'اللغة العربيه',),
                        SizedBox(height: height(context)*0.03,),
                        CustomContainer(tap:
                            ()async{
                          await context.setLocale(Locale('ar'));
                          CacheHelper.saveData('appLang', 'ar');
                          Navigator.pushReplacementNamed(context, AppRoutes.btnNav);
                          cubit.changtoeng(true);
                        }, choose:cubit.engLang, text1: 'English',),



                      ]))
          ));

        }));
  }
}
