import 'package:flutter/material.dart';
import '../../../component/style/colors.dart';
import '../../../component/style/fonts.dart';
import '../../../component/style/size.dart';
class CustomFormField extends StatelessWidget {
  CustomFormField({Key? key, this.sifix,this.max,this.save, this.hint, this.pre, this.vali, this.col,this.textcol}) : super(key: key);
  void Function(String?)? save;
  String? Function(String?)? vali;
  IconData? pre;
  Widget? sifix;
  String? hint;
  Color? col;
  Color? textcol;
  int? max;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: max,
      onSaved: save,
      validator:vali,
      cursorColor: AppColor.primaryColor,
      style: TextStyle(color:textcol??  AppColor.secondryColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: height(context)*0.015,horizontal:height(context)*0.01 ),
        fillColor: Colors.grey.withOpacity(.05) ,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color:col ?? Colors.grey.withOpacity(.05))
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color:col ?? Colors.grey)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color:col ?? Colors.grey.withOpacity(.05))
        ),
        prefixIcon: Icon(pre, color: Colors.grey.withOpacity(0.7),size: 22,),
        suffixIcon: sifix,
        hintText: hint,
        hintStyle: TextStyle(color:Colors.grey.withOpacity(0.7),fontSize: AppFonts.t7 ),
      ),
    );
  }
}
