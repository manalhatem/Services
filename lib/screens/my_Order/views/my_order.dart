import 'dart:math';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mwassim/component/style/images.dart';

import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../order_history/widgets/custom_order.dart';


class MYOrderScreen extends StatefulWidget {
  const MYOrderScreen({Key? key}) : super(key: key);

  @override
  State<MYOrderScreen> createState() => _MYOrderScreenState();
}

class _MYOrderScreenState extends State<MYOrderScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        margin: EdgeInsets.only(top: height(context)*0.07),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: width(context)*0.03),
              child: Row(
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
                  CustomText(text: LocaleKeys.myOrders.tr(), color: AppColor.primaryColor,size: 19,fontfam: 'GeLight',),
                ],
              ),
            ),
            Container(
              height: height(context)*0.07,
              margin: EdgeInsets.only(top:  height(context)*0.05, left:  width(context)*0.05, right:  width(context)*0.05),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
              decoration: BoxDecoration(
                color: AppColor.textFieldBGColor,
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
              ),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    25.0,
                  ),
                  color: Colors.green,
                ),
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: AppFonts.t3),
                unselectedLabelStyle: TextStyle(fontSize: AppFonts.t4),
                unselectedLabelColor: AppColor.secondryColor,
                tabs: [
                  Tab(
                    text: LocaleKeys.curret.tr(),
                  ),
                  Tab(
                    text: LocaleKeys.previous.tr(),
                  ),

                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      physics:const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (ctx,index){
                        return CustomOrderItem(
                            orderQuantity:33,
                            id: 10,
                            orderCount: '88',
                            orderDate:'21/3',
                            orderImage: Image.asset(AppImages.clean, width: width(context)*0.2,height: height(context)*.13,),
                            orderPrice:'25${LocaleKeys.currency.tr()}',
                            context: context,
                            statusIdd: 0,
                            tapId: 1

                        );
                      }),
                  ListView.builder(
                      physics:const BouncingScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (ctx,index){
                        return CustomOrderItem(
                            orderQuantity:33,
                            id: 10,
                            orderCount: '88',
                            orderDate:'21/3',
                            orderImage: Image.asset(AppImages.clean, width: width(context)*0.2,height: height(context)*.13,),
                            orderPrice:'25${LocaleKeys.currency.tr()}',
                            context: context,
                            statusIdd: 0,
                            tapId: 1

                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
