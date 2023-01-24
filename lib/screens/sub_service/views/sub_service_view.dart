import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../component/custom_text.dart';
import '../../../component/fade_animate.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
class SubServiceView extends StatelessWidget {
   SubServiceView({Key? key, this.title}) : super(key: key);

   String? title;

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
                  CustomText(text: title!, color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                ],
              ),
               SizedBox(height: height(context)*0.05,),
               Expanded(
                 child: GridView.custom(
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
                      onTap: (){Navigator.pushNamed(context, AppRoutes.serviceDetailsView);},
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
