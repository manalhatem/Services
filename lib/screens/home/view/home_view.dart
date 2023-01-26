import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';
import 'package:mwassim/component/style/colors.dart';
import 'package:mwassim/component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../../auth/widgets/text_field.dart';
import '../widgets/drawer.dart';
import '../widgets/main_ser_ele.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
    List offerImage=[
      AppImages.offer1,
      AppImages.offer2
    ];
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(width: width(context),),
                Image.asset(AppImages.topBack,width: width(context)*0.85,),
                Positioned(
                    top: height(context)*0.14,
                    right: height(context)*0.03,
                    child: GestureDetector(
                        onTap: (){
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        child: Image.asset(AppImages.menu,width: width(context)*0.095,))),
                Positioned(
                    top: height(context)*0.12,
                    left: height(context)*0.03,
                    child: Image.asset(AppImages.notify,width: width(context)*0.14,)),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width(context)*0.054),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: LocaleKeys.IntroTitle1.tr(), color: AppColor.primaryColor,size: 18,fontfam: 'GeLight',),
                  SizedBox(height: height(context)*0.02,),
                  CustomText(text: LocaleKeys.name.tr(), color: AppColor.secondryColor),
                 SizedBox(height: height(context)*0.02,),
                  Row(
                    children: [
                      SizedBox(
                          width: width(context)*0.73,
                          child: CustomFormField(hint:"البحث عن خدمات" ,save:(val){} ,vali: (vali){},pre:Icons.search_sharp ,)),
                      const Spacer(),
                      GestureDetector(
                          onTap: (){},
                          child: Image.asset(AppImages.filter,width: width(context)*0.132,)),

                    ],
                  ),
                  SizedBox(height: height(context)*0.028,),
                  GestureDetector(
                      onTap: (){Navigator.pushNamed(context, AppRoutes.serviceView);},
                      child: CustomText(text: LocaleKeys.mainService.tr(), color: AppColor.primaryColor,size: 18,fontfam: 'GeLight',)),
                 SizedBox(
                   height: height(context)*0.145,
                   child: ListView.builder(
                     physics: const BouncingScrollPhysics(),
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (context,index)=> MainServiceElement(curIndex: index,),
                       itemCount: 5),
                 ),
                  SizedBox(
                    height: height(context)*0.3,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=> Padding(
                          padding:  EdgeInsets.symmetric(horizontal: height(context)*0.005,vertical: height(context)*0.01),
                          child: ListImageElement(),
                        ),
                        itemCount: 5),
                  ),
                 SizedBox(height: height(context)*0.01,),
                  CustomText(text:'العروض المميزة', color: AppColor.primaryColor,size: 18,fontfam: 'GeLight',),
                  SizedBox(
                    height: height(context)*0.2,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index)=>
                        Padding(
                          padding: EdgeInsets.only(left: height(context)*0.022,top:height(context)*0.026, ),
                          child: Image.asset(offerImage[index]),
                        ),
                        itemCount: offerImage.length),
                  ),




                ],

              ),
            )


          ],
        ),
      ),
    );
  }
}
