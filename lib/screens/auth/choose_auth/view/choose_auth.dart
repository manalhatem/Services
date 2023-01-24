import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';

import '../../../../component/style/colors.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../../../utilities/routes.dart';
import '../widgets/custom_btn.dart';
class ChooseAuth extends StatelessWidget {
  const ChooseAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.chooseAuthBack),fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [
            SizedBox(height: height(context)*0.5,),
            CustomBtn(text: LocaleKeys.log.tr(),ontap: (){Navigator.pushReplacementNamed(context,
                AppRoutes.login);},),
            SizedBox(height: height(context)*0.03,),
            CustomBtn(text: LocaleKeys.newAcc.tr(),ontap: (){
              Navigator.pushReplacementNamed(context,
                  AppRoutes.register);
            },),
            SizedBox(height: height(context)*0.05,),
            GestureDetector(
              onTap: (){
                Navigator.pushReplacementNamed(context, AppRoutes.btnNav);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: LocaleKeys.skip.tr(), color: Colors.white,),
                  Transform.rotate(
                      angle: pi,
                      child:const Padding(
                        padding:  EdgeInsets.only(bottom:8.0,left: 8 ),
                        child: Icon(Icons.arrow_back,color: Colors.white,),
                      )),

                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
