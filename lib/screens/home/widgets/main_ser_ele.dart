import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../utilities/routes.dart';
class MainServiceElement extends StatelessWidget {
   MainServiceElement({Key? key, required this.curIndex}) : super(key: key);

int curIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.pushNamed(context, AppRoutes.serviceView);},
      child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.asset(AppImages.ovalShape,width: width(context)*0.282,),
            Image.asset(mainSerImages[curIndex],width: width(context)*0.095),
          ],

      ),
    );
  }
  List mainSerImages=[
    AppImages.mainServ1,
    AppImages.mainServ2,
    AppImages.mainServ3,
    AppImages.mainServ4,
    AppImages.mainServ5,
  ];
}
// imageStack
class ListImageElement extends StatelessWidget {
  const ListImageElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.clean,width: width(context)*0.44,),
        Positioned(
            top: 15,
            right: 8,
            child: CustomText(text: 'تنظيف الواجهات الزجاجيه', color:AppColor.whiteColor ,size: 11,)),
        Positioned(
          bottom: 10,
          right: 5,
          left: 5,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: width(context)*.3,
                height: height(context)*0.051,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: CustomText(text: 'رس _25',color: AppColor.secondryColor,size: 13,),
              ),
              const Spacer(),
              Image.asset(AppImages.addSeq,width: width(context)*0.098,),
            ],
          ),
        )

      ],
    );
  }

}
