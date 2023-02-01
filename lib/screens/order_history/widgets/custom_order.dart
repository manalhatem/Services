import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../translation/locale_keys.g.dart';
import '../../order_details/views/order_details.dart';
Widget CustomOrderItem(

    {
      required context,
      Widget? orderImage,
      String? orderDate,
      required int? orderQuantity,
      String? orderCount,
      String? orderPrice,
      @required int?statusIdd,
      @required int?tapId,
      required int?id,
    }) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return
        OrderDetailsScreen(statusId:statusIdd!,tapId: tapId,id: id,);
      }));
      //myNavigate(screen: OrderDeatilsScreen(statusId:statusIdd!,tapId: tapId,id: id,), context: context);
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: height(context)*.014,),
      padding: EdgeInsets.symmetric(vertical: height(context)*.004),
      width: double.infinity,
      decoration:  BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColor.profileBgColor,
              width: 1.0,
            ),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              orderImage!,
              SizedBox(
                width: width(context)*.035,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                          text:'تنظيف الواجهات الزجاجيه ',
                          size: AppFonts.t4,
                          color: AppColor.primaryColor,
                          fontfam: 'GeMed'
                      ),

                    ],
                  ),
                  SizedBox(
                    height: height(context)*0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: LocaleKeys.orderDate.tr(),
                        size: AppFonts.t4-1,
                        color: AppColor.primaryColor,
                      ),
                      SizedBox(
                        width: width(context)*0.02,
                      ),
                      CustomText(
                        text: orderDate!,
                        size: AppFonts.t4-1,
                        color: AppColor.grayColor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height(context)*0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: LocaleKeys.Quantity.tr(),
                        size: AppFonts.t4-1,
                        color: AppColor.primaryColor,
                      ),
                      SizedBox(
                        width: width(context)*0.01,
                      ),
                      CustomText(
                        text: orderQuantity!.toString(),
                        size: AppFonts.t4-1,
                        color: AppColor.grayColor,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding:  EdgeInsets.only(left: width(context)*0.07),
            child: CustomText(
                text: orderPrice!, size: AppFonts.t4, color: AppColor.priceColor,fontfam: 'GeMed'),
          )
        ],
      ),
    ),
  );
}