import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'style/colors.dart';

showToast({
  required String text,
  required ToastStates state,
}) => Fluttertoast.showToast(
  msg: text,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
  backgroundColor: choseToastColor(state),
  textColor: Colors.white,
  fontSize: 16,
);

// enum
enum ToastStates {success , error, warning}

Color? choseToastColor(ToastStates state)
{
  Color color;
  switch(state)
  {
    case ToastStates.success:
      color = AppColor.primaryColor;
      break;
    case ToastStates.error:
      color =  Colors.red;
      break;
    case ToastStates.warning:
      color =   Colors.yellow;
      break;
  }
  return color;
}