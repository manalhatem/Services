import 'dart:math';

import 'package:flutter/material.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../utilities/routes.dart';
import '../models/intro_model.dart';
class IntroView extends StatefulWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  int currentIndex=2;
  PageController? _controller;
  @override
  void initState() {
    _controller=PageController(initialPage: 2);
    super.initState();
  }
  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.introBack),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: _controller,
                  onPageChanged: (int index){
                    setState(() {
                      currentIndex=index;
                    });
                  },
                  itemBuilder: (context,index){
                    return Padding(
                      padding:  EdgeInsets.only(top:height(context)*0.03,right: height(context)*0.04,left: height(context)*0.04 ),
                      child: Column(
                        children: [
                          index==2? SizedBox(height:height(context)*0.035 ,):Align(
                              alignment:Alignment.topRight,
                              child: Transform.rotate(
                                  angle: pi,
                                  child: IconButton(onPressed: (){
                                    _controller!.nextPage(duration:const Duration(milliseconds: 100) ,
                                    curve: Curves.bounceInOut);
                                  }, icon: Icon(Icons.arrow_forward_ios,color: AppColor.secondryColor,)))),
                          SizedBox(height: height(context)*0.03,),
                          CustomText(text:introList[index].title , color:AppColor.secondryColor, size:AppFonts.t5),
                          SizedBox(height: height(context)*0.02,),
                          Image.asset(introList[index].img,height: height(context)*0.33,),
                          SizedBox(height: height(context)*0.03,),
                          index==2? CustomText(text: introList[index].subtitle!, color: AppColor.textColor,size: AppFonts.t6,): SizedBox(height: height(context)*0.01,),
                          CustomText(text: introList[index].body, color: AppColor.grayColor,align: TextAlign.center,size: AppFonts.t4,),
                        ],
                      ),
                    );
                  },itemCount: introList.length,),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(introList.length, (index) {
                    return buildDot(index);
                  }),
                ),
              ),
              SizedBox(height: height(context)*0.05,),
              Padding(
                padding:  EdgeInsets.only(left:width(context)*0.05, ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: (){
                      currentIndex == introList.length-3 ?
                          Navigator.pushNamed(context, AppRoutes.chooseAuth):
                         Navigator.pop(context);
                    },
                    child:
                    currentIndex == introList.length-3 ?
                    Image.asset(AppImages.nextt,width: width(context)*0.14,):
                    Image.asset(AppImages.next,width: width(context)*0.14,),
                  ),
                ),
              ),
              SizedBox(height: height(context)*0.04,),

            ],

          ),
        ),

      ),
    );
  }

  Widget  buildDot(int index){
    return Container(
      width: currentIndex==index? 28:10,
      height: 10,
      margin: EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: currentIndex==index? AppColor.thirdColor:Colors.grey,
        borderRadius: BorderRadius.circular(20),

      ),
    );
  }
}

