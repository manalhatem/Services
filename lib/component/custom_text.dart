import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
   CustomText({required this.text,
   this.size,required this.color,this.fontWeight,this.align,this.deco,this.fontfam,this.max});

  String text;
  Color color;
 FontWeight? fontWeight;
   String? fontfam;
  double? size;
   TextAlign? align;
   TextDecoration? deco;
   int? max;

   @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontFamily: fontfam,
      color: color, fontSize: size,fontWeight: fontWeight,
        decoration: deco,
    ),textAlign:align ,
      overflow: TextOverflow.ellipsis,
    maxLines: max,);
  }
}
