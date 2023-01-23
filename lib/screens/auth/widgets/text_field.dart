import 'package:flutter/material.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/size.dart';
class CustomFormField extends StatelessWidget {
  CustomFormField({Key? key, this.save, this.hint, this.pre, this.vali}) : super(key: key);
  void Function(String?)? save;
  String? Function(String?)? vali;
  IconData? pre;
  String? hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: save,
      validator:vali,
      cursorColor: AppColor.primaryColor,
      style: TextStyle(color:  AppColor.secondryColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: height(context)*0.015,horizontal:height(context)*0.01 ),
        fillColor: Colors.grey.withOpacity(.05),
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color:Colors.grey.withOpacity(.05))
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color:Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey.withOpacity(.05))
        ),
        prefixIcon: Icon(pre, color: Colors.grey.withOpacity(0.7),size: 22,),
        hintText: hint,
        hintStyle: TextStyle(color:Colors.grey.withOpacity(0.7),fontSize: AppFonts.t7 ),
      ),
    );
  }
}
