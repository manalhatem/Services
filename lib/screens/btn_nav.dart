import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../component/custom_btn.dart';
import '../component/custom_text.dart';
import '../component/style/colors.dart';
import '../component/style/images.dart';
import '../translation/locale_keys.g.dart';
import 'auth/widgets/text_field.dart';
import 'gallery/views/gallery_view.dart';
import 'home/view/home_view.dart';
import 'offers/views/offers_view.dart';
import 'order_now/view/order_now_view.dart';
import 'profile/views/profile_view.dart';
class ButNavBar extends StatefulWidget {
  const ButNavBar({Key? key}) : super(key: key);

  @override
  State<ButNavBar> createState() => _ButNavBarState();
}

class _ButNavBarState extends State<ButNavBar> {
  int currentIndex=0;
  DateTime selectedDate = DateTime.now();
  List screens=[
    const HomeView(),
    const GalleryView(),
    const OrderNowView(),
     OffersView(withBack: false,),
    const ProfileView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index){
            if(index==2){
              bottomSheet(context);
            }
            setState(() {
              currentIndex=index;
            });
          },
          elevation: 30,
          backgroundColor: Colors.white,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(icon:
            Image.asset(currentIndex==0?AppImages.homeIconActive:AppImages.homeIcon,width: width(context)*0.092,),label: 'home'),
            BottomNavigationBarItem(icon: Image.asset(currentIndex==1?AppImages.galleryIconActive:AppImages.galleryIcon,width: width(context)*0.092,),label: 'gallery'),
            BottomNavigationBarItem(icon: Image.asset(AppImages.addIcon,width: width(context)*0.134,),label: 'add'),
            BottomNavigationBarItem(icon: Image.asset(currentIndex==3?AppImages.offerIconActive:AppImages.offerIcon,width: width(context)*0.092,),label: 'offer'),
            BottomNavigationBarItem(icon: Image.asset(currentIndex==4?AppImages.profileIconActive:AppImages.profileIcon,width: width(context)*0.092,),label: 'profile'),

          ],

        ),
      ),
    );
  }
  bottomSheet(context,){
    showModalBottomSheet(
      // enableDrag: false,
        useRootNavigator: true,
        isScrollControlled: true,
        shape:const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(20)
            )
        ),
        context: context, builder: (context){
      return Container(
        height: height(context)*0.85,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:  EdgeInsets.only(right: width(context)*0.05,left:width(context)*0.05,bottom: MediaQuery.of(context).viewInsets.bottom ),
            child: Column(
              children: [
                SizedBox(height: height(context)*0.03,),
                CustomText(text: LocaleKeys.orderSerNow.tr(), color: AppColor.primaryColor),
                SizedBox(height: height(context)*0.03,),
                CustomFormField(hint: LocaleKeys.userName.tr(),save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomFormField(hint: LocaleKeys.email.tr(),save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomFormField(hint: LocaleKeys.phone.tr(),save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomFormField(sifix: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.arrow_drop_down, color: AppColor.priceColor,size: 32,),
                ),hint: LocaleKeys.serviceName.tr(),save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomFormField(sifix: GestureDetector(
                  onTap: ()async{
                    final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime(2015, 8),
                        lastDate: DateTime(2101),
                        builder: (context, child){
                          return Theme(
                            data: Theme.of(context).copyWith(
                              colorScheme:const ColorScheme.light(
                                primary: AppColor.secondryColor,
                                onPrimary: Colors.white,
                                onSurface: AppColor.primaryColor,
                              ),
                              textButtonTheme: TextButtonThemeData(
                                style: TextButton.styleFrom(
                                  primary:AppColor.primaryColor, // button text color
                                ),
                              ),
                            ), child: child!,);
                        }
                    );
                    if (picked != null && picked != selectedDate) {
                      setState(() {
                        selectedDate = picked;
                      });
                    };},
                  child: Transform.scale(scale:.4, child: Image.asset(AppImages.ycal)),
                ),hint: "${selectedDate.toLocal()}".split(' ')[0],save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomFormField(
                  sifix: GestureDetector(
                    onTap: (){
                      // _getCurrentLocation().then((value) {
                      //   lat='${value.latitude}';
                      //   long='${value.longitude}';
                      //   setState(() {
                      //     locationMsg='lat: $lat long: $long';
                      //   });
                      // });
                    },
                    child: Transform.scale(scale:.4, child: Image.asset(AppImages.yloc)),),
                  hint: LocaleKeys.address.tr(),save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomFormField(max: 4,hint: LocaleKeys.notes.tr(),save: (value){},vali: (val){},textcol: AppColor.primaryColor,),
                SizedBox(height: height(context)*0.015,),
                CustomBtn(text: LocaleKeys.orderNow.tr(),)
              ],
            ),
          ),
        ),
      );
    });

  }
}

