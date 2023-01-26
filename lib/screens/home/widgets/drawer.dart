import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../component/custom_text.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../../utilities/routes.dart';
import '../../auth/choose_auth/view/choose_auth.dart';
import 'custom_row.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: width(context)*0.5,
        height: height(context),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.drawerBg), fit: BoxFit.fill),
        ),
        child: Column(
          children: [
            SizedBox(height: height(context)*.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //  CacheHelper.getData(key: 'isLogin') != null ?
              //   Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       ClipRRect(
              //         borderRadius: BorderRadius.all(Radius.circular(10)),
              //         child: Image.network(
              //           CacheHelper.getData(key: 'userImage'),
              //           width: 13.w,
              //           height: 9.h,
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //       SizedBox(
              //         width: 4.w,
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           CustomText(
              //               text: CacheHelper.getData(key: 'userName'),
              //               color: AppColor.whiteColor,
              //               fontSize: AppFonts.t4),
              //           const SizedBox(
              //             height: 5,
              //           ),
              //           CustomText(
              //               text: CacheHelper.getData(key: 'email'),
              //               color: AppColor.textColor,
              //               fontSize: AppFonts.t4),
              //         ],
              //       ),
              //     ],
              //   )
              //       :
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.notLogedUser,
                      width: width(context)*0.1,
                    ),
                    SizedBox(
                      width: width(context)*.1,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (c, a1, a2) => const ChooseAuth(),
                              transitionsBuilder: (c, anim, a2, child) =>
                                  FadeTransition(opacity: anim, child: child),
                              transitionDuration: const Duration(milliseconds: 500),
                            ),
                                (Route<dynamic> route) =>
                            false);
                      },
                      child: CustomText(
                          text: LocaleKeys.loginNow.tr(),
                          deco: TextDecoration.underline,
                          color: AppColor.textColor,
                          size: AppFonts.t4),
                    ),
                  ],
                ),
                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset(
                      AppImages.closeIcon,
                      width: width(context)*.1,
                      fit: BoxFit.contain,
                    ))
              ],
            ),
            SizedBox(
              height: height(context)*.01,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        title: LocaleKeys.home_title.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.homeDIcon,
                        titleColor: Colors.white,
                    context: context),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.serviceView);
                        },
                        title: LocaleKeys.services.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.servicesIcon,
                        context: context,
                        titleColor: Colors.white),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.offersView);
                        },
                        title: LocaleKeys.offers.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.offersIcon,
                        context: context,
                        titleColor: Colors.white),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.partnersView);
                        },
                        title: LocaleKeys.part.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.paretrDrIcon,
                        context: context,
                        titleColor: Colors.white),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.customerScreen);
                        },
                        title: LocaleKeys.customer.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.customerDrIcon,
                        context: context,
                        titleColor: Colors.white),
                   // CacheHelper.getData(key: 'isLogin') != null ?
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.technicalScreen);
                        },
                        title: LocaleKeys.customerser.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.tecnSuppIcon,
                        context: context,
                        titleColor: Colors.white) ,
                        //: const SizedBox.shrink(),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.faqScreen);
                        },
                        title: LocaleKeys.FAQ.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.faqIcon,
                        context: context,
                        titleColor: Colors.white),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.aboutappScreen);
                        },
                        title: LocaleKeys.aboutApp.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.aboutAppIcon,
                        context: context,
                        titleColor: Colors.white),
                    CustomRowBtn(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.contactusScreen);
                        },
                        title: LocaleKeys.contactUs.tr(),
                        withArrow: false,
                        context: context,
                        prefxIcon: AppImages.contactUsIcon,
                        titleColor: Colors.white),

                   // CacheHelper.getData(key: 'isLogin') != null ?

                    CustomRowBtn(
                        onTap: () async{
                         // await ProfileCubit().logOut(context);
                        },
                        title: LocaleKeys.logout.tr(),
                        withArrow: false,
                        prefxIcon: AppImages.logOutDrIcon,
                        context: context,
                        titleColor: Colors.white) ,
                       // : const SizedBox.shrink(),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              AppImages.MawasimDrLogo,
                              width: width(context)*.1,
                            ),
                            SizedBox(
                              height: height(context)*.01,
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
