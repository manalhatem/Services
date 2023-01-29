import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mwassim/component/style/size.dart';

import '../../../component/style/colors.dart';
class CountdownTimer extends StatefulWidget {
  const CountdownTimer({Key? key}) : super(key: key);

  @override
  State<CountdownTimer> createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  Timer? countdownTimer;
  Duration myDuration = const Duration(days: 2);
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  /// Timer related methods ///
  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }
  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(days: 5));
  }
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    final hours = strDigits(myDuration.inHours.remainder(24));
    final minutes = strDigits(myDuration.inMinutes.remainder(60));
    final seconds = strDigits(myDuration.inSeconds.remainder(60));
    return Center(
        child: Column(
          children: [
             SizedBox(
              height: height(context)*0.025,
            ),
            Text(
              '$hours:$minutes:$seconds',
              style: TextStyle(
                  color:AppColor.primaryColor,
                  fontSize: 32),
            ),
            Text(
              "  ثانيه    دقيقه    ساعه  ",
              style: TextStyle(
                  color:AppColor.secondryColor,
                  fontSize: 16),
            ),
            // Step 9
            // ElevatedButton(
            //   onPressed: startTimer,
            //   child: Text(
            //     'Start',
            //     style: TextStyle(
            //       fontSize: 30,
            //     ),
            //   ),
            // ),
            // // Step 10
            // ElevatedButton(
            //   onPressed: () {
            //     if (countdownTimer == null || countdownTimer!.isActive) {
            //       stopTimer();
            //     }
            //   },
            //   child: Text(
            //     'Stop',
            //     style: TextStyle(
            //       fontSize: 30,
            //     ),
            //   ),
            // ),
            // // Step 11
            // ElevatedButton(
            //     onPressed: () {
            //       resetTimer();
            //     },
            //     child: Text(
            //       'Reset',
            //       style: TextStyle(
            //         fontSize: 30,
            //       ),
            //     ))
          ],
        ),
      );
  }
}