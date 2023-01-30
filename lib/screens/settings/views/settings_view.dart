import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../controller/settings_cubit.dart';
import '../controller/settings_states.dart';
import '../widgets/custom_sett_row.dart';
import '../widgets/switch_bttn.dart';
class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => SettingsCubit(),
      child: BlocBuilder<SettingsCubit,SettingsClass>(
        builder: (context, state){
          final cubit= SettingsCubit.get(context);
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
                                CustomText(text: LocaleKeys.settings.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                              ],
                            ),
                            SizedBox(height: height(context)*0.03,),
                            CustomsetRow(text: LocaleKeys.notif.tr(), img: AppImages.bill,ontap: (){}, icon: SwitchBtn(cubit: cubit,),),
                            Divider(),
                            CustomsetRow(text: LocaleKeys.lang.tr(), img: AppImages.lang,ontap: (){
                              Navigator.pushNamed(context, AppRoutes.langView);
                            }, icon:
                            Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey.withOpacity(.8),size: 20,),),
                            Divider(),
                            CustomsetRow(text: LocaleKeys.changePass.tr(), img: AppImages.changePass,ontap: (){
                              Navigator.pushNamed(context, AppRoutes.changePassView);
                            }, icon:
                            Icon(Icons.arrow_back_ios_new_outlined,color: Colors.grey.withOpacity(.8),size: 20,),),

                          ]))));
        },
      ),
    );
  }
}
