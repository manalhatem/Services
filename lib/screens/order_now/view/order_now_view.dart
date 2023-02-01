import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mwassim/component/custom_text.dart';
import 'package:mwassim/component/style/colors.dart';
import '../../../component/custom_btn.dart';
import '../../../component/custom_text_field.dart';
import '../../../component/style/images.dart';
import '../../../component/style/size.dart';
import '../../../translation/locale_keys.g.dart';
import '../../auth/widgets/text_field.dart';

class OrderNowView extends StatefulWidget {
  const OrderNowView({Key? key}) : super(key: key);

  @override
  State<OrderNowView> createState() => _OrderNowViewState();
}

class _OrderNowViewState extends State<OrderNowView> {
  DateTime selectedDate = DateTime.now();
  late String lat;
  late String long;
  String locationMsg='Current Location of user';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
              width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.topBack),
                    fit: BoxFit.fill,
                  ),
                ),
                child:Center(
                  // child: MaterialButton(
                  //   onPressed: (){bottomSheet(context);},
                  //   child: Text('ADD'),
                  // ),
                )

            )));
  }



 Future<Position> _getCurrentLocation()async{
    bool serviceEnable= await Geolocator.isLocationServiceEnabled();
    if(!serviceEnable){
      return Future.error('Location services are disabled');
    }

    LocationPermission permission=await Geolocator.checkPermission();
    if(permission== LocationPermission.denied){
      permission= await Geolocator.requestPermission();
      if(permission== LocationPermission.denied){
      return Future.error('Location permission are denied');}
    }

    if(permission== LocationPermission.deniedForever){
      return Future.error('Location permission are denied ForEver');}

    return await Geolocator.getCurrentPosition();

  }

}
