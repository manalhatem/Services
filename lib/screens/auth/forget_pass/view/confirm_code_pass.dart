import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../component/custom_text.dart';
import '../../../../component/style/colors.dart';
import '../../../../component/style/fonts.dart';
import '../../../../component/style/images.dart';
import '../../../../component/style/size.dart';
import '../../../../translation/locale_keys.g.dart';
import '../../../../utilities/routes.dart';
import '../../widgets/custom_btn.dart';
class ConfirmCodePass extends StatefulWidget {
  const ConfirmCodePass({Key? key}) : super(key: key);

  @override
  State<ConfirmCodePass> createState() => _ConfirmCodePassState();
}

class _ConfirmCodePassState extends State<ConfirmCodePass> {

  String currentText="";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: width(context),
          height: height(context),
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AppImages.backConfirmCode),fit: BoxFit.fill),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height(context)*0.08,right:height(context)*0.04,left: height(context)*0.04 ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: LocaleKeys.welcome2.tr(), color: AppColor.primaryColor,size: AppFonts.t5,),
                  SizedBox(height: height(context)*0.018,),
                  CustomText(text: LocaleKeys.forgPassw.tr(), color: AppColor.secondryColor,size: AppFonts.t6),
                  SizedBox(height: height(context)*0.13,),
                  Center(child: CustomText(text:"كود التحقق ", color: AppColor.primaryColor,size: AppFonts.t3)),
                  SizedBox(height: height(context)*0.03,),
                  PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                    textStyle: TextStyle(color: AppColor.secondryColor),
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',
                    pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(4.0),
                        fieldHeight: height(context) * 0.07,
                        fieldWidth: width(context) * 0.14,
                        inactiveColor: AppColor.textFieldBGColor,
                        selectedFillColor: AppColor.textFieldBGColor,
                        activeColor: AppColor.textFieldBGColor,
                        activeFillColor: AppColor.textFieldBGColor,
                        inactiveFillColor: AppColor.textFieldBGColor,
                        selectedColor: AppColor.secondryColor),
                    cursorColor:AppColor.secondryColor,
                    animationDuration: const Duration(milliseconds: 200),
                    enableActiveFill: true,
                    // controller: cubit.pin,
                    keyboardType: TextInputType.number,
                    boxShadows: const [
                      BoxShadow(
                        offset: Offset(0, 1),
                        color: Colors.black12,
                        blurRadius: 10,
                      )
                    ],
                    onCompleted: (v) {
                      debugPrint("Completed");
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      debugPrint(value);
                      setState(() {
                        currentText = value;
                      });
                    },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                  SizedBox(height: height(context)*0.05,),
                  Center(child: AuthCustomBtn(text: LocaleKeys.confirm.tr(),ontap: (){
                    Navigator.pushNamed(context, AppRoutes.chanePass);
                  },)),
                  SizedBox(height: height(context)*0.04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.recycling,color: AppColor.secondryColor ,size: 22,),
                      GestureDetector(
                          onTap: (){
                          },
                          child: CustomText(text: " اعادة المحاوله", color: AppColor.secondryColor ,)),


                    ],
                  )


                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
