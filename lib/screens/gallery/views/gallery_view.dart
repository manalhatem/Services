import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mwassim/component/style/colors.dart';

import '../../../component/custom_text.dart';
import '../../../component/fade_animate.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top:height(context)*0.05,left:height(context)*0.035,right: height(context)*0.035,  ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: width(context)*0.05,),
                  CustomText(
                    fontWeight: FontWeight.w600,
                    text: LocaleKeys.photosVid.tr(), color: AppColor.primaryColor,size: 20,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.05,),
              Row(
                children: [
                  Container(
                    width: width(context)*.32,
                    height:width(context)*.15,
                    decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: width(context)*0.05,),
                      Image.asset(AppImages.allIcon2, width: width(context)*0.08,),
                    SizedBox(width: width(context)*0.02,),
                    CustomText(text: LocaleKeys.all.tr(), color: AppColor.whiteColor),
                  ],),
                  ),
                  SizedBox(width: width(context)*0.04,),
                  Image.asset('assets/images/1.png', width: width(context)*0.15,),
                  SizedBox(width: width(context)*0.012,),
                  Image.asset('assets/images/2.png', width: width(context)*0.15),
                  SizedBox(width: width(context)*0.012,),
                  Image.asset('assets/images/3.png', width: width(context)*0.15),
                ],
              ),
              SizedBox(height: height(context)*0.02,),
              Expanded(
                child: GridView.custom(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverWovenGridDelegate.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    pattern: [
                      const WovenGridTile(1),
                      const WovenGridTile(7 /10,
                        crossAxisRatio: .9,
                        alignment: AlignmentDirectional.center,),],),
                  childrenDelegate: SliverChildBuilderDelegate(
                    childCount: 8,
                        (context, index) {
                      return GestureDetector(
                        onTap: (){},
                        child: FadeAnimation(
                            index.toDouble()-0.5,
                            1,
                            Stack(
                              children: [
                                Image.asset(AppImages.clean,width: width(context)*0.44,),
                                Positioned(
                                    top: 15,
                                    right: 13,
                                    child: CustomText(text: 'تنظيف الواجهات الزجاجيه', color:AppColor.whiteColor ,size: 11,)),
                              ],)),
                      );

                    },
                  ),),
              ),



            ],
          ),
        ),


      ),
    );
  }
}
