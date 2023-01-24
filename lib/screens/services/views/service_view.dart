import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/custom_text.dart';
import 'package:mwassim/component/style/colors.dart';
import 'package:mwassim/component/style/images.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../../sub_service/views/sub_service_view.dart';
import '../model/serviceModel.dart';
import '../widgets/gride_ele.dart';
class ServiceView extends StatefulWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.greenBack),fit: BoxFit.fill),
        ),
        child: Padding(
          padding:  EdgeInsets.only(top: height(context)*0.09,right:height(context)*0.03,left: height(context)*0.03),
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
                        border: const Border(
                          top: BorderSide(color: AppColor.whiteColor),
                          left:  BorderSide(color: AppColor.whiteColor),
                          right:  BorderSide(color: AppColor.whiteColor),
                          bottom:  BorderSide(color: AppColor.whiteColor),
                        ),
                      ),
                      child: Transform.rotate(
                          angle: pi,
                          child: const Icon(Icons.arrow_forward_ios, color: AppColor.whiteColor,)),
                    ),
                  ),
                 SizedBox(width: width(context)*0.05,),
                 CustomText(text: LocaleKeys.mainService.tr(), color: AppColor.whiteColor,size: 20,fontfam: 'GeLight',),
                ],
              ),
              SizedBox(height: height(context)*0.05,),
              Expanded(
                child:
                GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  childAspectRatio: .82) ,
                    itemCount: services.length,
                    itemBuilder: (context,index){
                  return EleGride(text: services[index].name,img: services[index].image,onTap: (){
                    setState(() {
                      Future.delayed(const Duration(milliseconds: 200)).then((value){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return SubServiceView(title:services[index].name ,);
                        }));
                      });
                    });
                  },sel: services[index].sel,);
                    }),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
