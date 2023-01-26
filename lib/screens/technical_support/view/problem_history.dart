import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/utilities/routes.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../widgets/custom_problem.dart';
class ProblemHistoryView extends StatelessWidget {
  const ProblemHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top:height(context)*0.05,left:height(context)*0.035,right: height(context)*0.035,  ),
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
                  CustomText(text: 'سجل المشكلات ', color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.05,),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                    itemCount: 8,
                    itemBuilder: (context,index){
                  return const CustomProblem();
                }, separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: height(context)*0.022,);
                },),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
