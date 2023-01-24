import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../component/style/images.dart';
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
  List screens=[
    const HomeView(),
    const GalleryView(),
    const OrderNowView(),
    const OffersView(),
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
}

