import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../component/custom_btn.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../report_problem/view/report_problem_view.dart';
class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({
    Key? key,
    @required this.statusId, this.tapId, required this.id
  }) : super(key: key);
  final int? statusId;
  final int? tapId;
  final int? id;

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        margin: EdgeInsets.only(top: height(context)*0.07, right: width(context)*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Column(
                        children: [
                          Image.asset(AppImages.clean, width:width(context)*0.4,fit: BoxFit.cover,),
                          SizedBox(height: height(context)*0.03,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomText(
                                  text: 'تنظيف الوجهات الزجاجيه',
                                  size: AppFonts.t4,
                                  color: AppColor.primaryColor,
                                  fontfam: 'GeMed'
                              ),
                              SizedBox(
                                  height:  height(context)*0.015
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 0,
                                direction: Axis.horizontal,
                                itemSize: 17,
                                allowHalfRating: true,

                                itemCount: 5,
                                ignoreGestures: true,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 12,
                                ),
                                onRatingUpdate: (double value) {},
                              ),
                              SizedBox(
                                height:  width(context)*0.03,
                              ),
                              CustomText(
                                text:  '25... ${ LocaleKeys.currency.tr()}',
                                size: AppFonts.t4-1,
                                color: AppColor.primaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal:  width(context)*0.01,vertical:  width(context)*0.01),
                      child: Divider(color: AppColor.primaryColor,),
                    ) ,
                    Padding(
                      padding: EdgeInsets.only(top:  width(context)*0.01, left:  width(context)*0.01, right:  width(context)*0.01),
                      child:
                      widget.tapId==3?
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    AppImages.sAcceptedIcon,width: width(context)*0.1,
                                  ),
                                  Image.asset(
                                    widget.statusId! > 0? AppImages.lineBoredrColor
                                        : AppImages.lineBoredrgray,
                                    height: height(context)*0.07,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p11.tr(),
                                      color:  AppColor.secondryColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.1,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text: 'data',
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset( AppImages.sUnConfirmIcon,
                                    width: width(context)*0.1,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.02,
                                  ),
                                  Image.asset( AppImages.lineBoredrgray,
                                    height: width(context)*0.1,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p22.tr(),
                                      color:  AppColor.grayColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.1,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text:  widget.statusId! >= 1  ?
                                          LocaleKeys.notActive.tr():
                                          LocaleKeys.notActive.tr(),
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    ( AppImages.SunDeliverdIcon),
                                    width: width(context)*0.1,
                                    height: width(context)*0.1,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.07,
                                  ),
                                  Image.asset( AppImages.lineBoredrgray,
                                    height: width(context)*0.2,
                                  ),
                                  SizedBox(
                                    height:width(context)*0.1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width:width(context)*0.1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p33.tr(),
                                      color:  AppColor.grayColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.07,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text: widget.statusId! >=2  ?
                                          LocaleKeys.notActive.tr(): LocaleKeys.notActive.tr() ,
                                          // ' 09:16 ص  مارس 31-2022' : "notActive".tr(),
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    ( AppImages.sUnDoneOrderIcon),
                                    width: width(context)*0.1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p44.tr(),
                                      color:  AppColor.grayColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.1,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text: widget.statusId! >= 3  ?
                                          LocaleKeys.notActive.tr():
                                           LocaleKeys.notActive.tr(),
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ):
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    AppImages.sAcceptedIcon,
                                    width: width(context)*0.1,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.02,
                                  ),
                                  Image.asset(
                                    widget.statusId! > 0? AppImages.lineBoredrColor
                                        : AppImages.lineBoredrgray,
                                    height: width(context)*0.15,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.02,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.06,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p11.tr(),
                                      color:  AppColor.secondryColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.04,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text: '31/1',
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    widget.statusId! >= 1?
                                    AppImages.sConfirmIcon
                                        : AppImages.sUnConfirmIcon,
                                    width: width(context)*0.08,
                                  ),
                                  SizedBox(
                                    height: height(context)*0.01,
                                  ),
                                  Image.asset(
                                    widget.statusId! > 1? AppImages.lineBoredrColor
                                        : AppImages.lineBoredrgray,
                                    height: height(context)*0.07,
                                  ),
                                  SizedBox(
                                    height: height(context)*0.01,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.07,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p22.tr(),
                                      color: widget.statusId! >= 1?
                                      AppColor.secondryColor
                                          : AppColor.grayColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.03,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text:  widget.statusId! >= 1  ?
                                          LocaleKeys.notActive.tr():
                                          LocaleKeys.notActive.tr(),
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    (widget.statusId! >= 2? AppImages.sDeliverIcon
                                        : AppImages.SunDeliverdIcon),
                                    width: width(context)*0.1,
                                    height: width(context)*0.1,
                                    fit: BoxFit.fill,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.02,
                                  ),
                                  Image.asset(
                                    widget.statusId! >2
                                        ? AppImages.lineBoredrColor
                                        : AppImages.lineBoredrgray,
                                    height: height(context)*0.07,
                                  ),
                                  SizedBox(
                                    height: width(context)*0.05,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.07,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p33.tr(),
                                      color: widget.statusId!>=2?  AppColor.secondryColor
                                          : AppColor.grayColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.03,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text: widget.statusId! >=2  ?
                                          LocaleKeys.notActive.tr():LocaleKeys.notActive.tr() ,
                                          // ' 09:16 ص  مارس 31-2022' : "notActive".tr(),
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    (widget.statusId! >=3
                                        ? AppImages.deliver
                                        : AppImages.deliver),
                                    width: width(context)*0.1,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(context)*0.075,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                      text: LocaleKeys.p44.tr(),
                                      color: widget.statusId! >=3
                                          ? AppColor.secondryColor
                                          : AppColor.grayColor,
                                      size: AppFonts.t3),
                                  SizedBox(
                                    height: width(context)*0.025,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time,
                                          size: 15, color: AppColor.grayColor),
                                      SizedBox(
                                        width: width(context)*0.03,
                                      ),
                                      CustomText(
                                          text: widget.statusId! >= 3  ?
                                          LocaleKeys.notActive.tr():
                                          LocaleKeys.notActive.tr(),
                                          size: AppFonts.t4,
                                          color: AppColor.grayColor)
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width(context)*0.08,
                    ),
                     widget.tapId == 1 ? SizedBox():
                    Container(
                        alignment: Alignment.center,
                        width: width(context)*0.1,
                        height: width(context)*0.1,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: AppColor.orderDoneBorder),
                            color:Color(0xFFB3E9D1).withOpacity(.20)),
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.symmetric(vertical: 4),
                        child: CustomText(
                            align: TextAlign.center,
                            text: LocaleKeys.orderDoneText.tr(),
                            size: AppFonts.t4,
                            color:  AppColor.primaryColor)),
                        CustomBtn(
                            text: LocaleKeys.anouncePro.tr(),
                             ontap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return const ReportProblem();
                              }));
                             },),

                        SizedBox(
                          height: width(context)*0.1,
                        ),
                      ],
    ),
    ))],
                ),
              ),
            );
  }
}
