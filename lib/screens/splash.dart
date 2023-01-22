import 'package:flutter/material.dart';
import '../component/fade_animate.dart';
import '../component/style/colors.dart';
import '../component/style/images.dart';
import '../component/style/size.dart';
import '../utilities/routes.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState() {
    Future.delayed(Duration(milliseconds: 4000)).then((value) {
     return  Navigator.pushNamed(context, AppRoutes.lang);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.splashBG),
                fit: BoxFit.fill,
              ),
            ),
            child:FadeAnimation(
              1,
              2, Center(
              child: Image.asset(AppImages.MawasimLogo,width: width(context) *0.5,),
            ),
          ),

        ),
      ),
    );
  }
}
