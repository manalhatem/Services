import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../component/style/colors.dart';
class SwitchBtn extends StatelessWidget {
   SwitchBtn({Key? key,required this.cubit}) : super(key: key);
 var cubit;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: pi,
      child: Transform.scale(
        scale: .8,
        child: CupertinoSwitch(
          // overrides the default green color of the track
            activeColor: AppColor.primaryColor,
            // color of the round icon, which moves from right to left
            thumbColor: Colors.white,
            // when the switch is off
            trackColor: Colors.black12,
            // boolean variable value
            value: cubit.isNotify,
            // changes the state of the switch
            onChanged: (value){
              cubit.changeNotify(value);

            }
        ),
      ),
    );
  }
}
