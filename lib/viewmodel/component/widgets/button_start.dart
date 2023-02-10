
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonStart extends StatelessWidget {
  const ButtonStart({
    Key? key,
    this.onPressed,
  }) : super(key: key);
 final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
         width: 65.w,
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
             primary: Color(0XFF0099FF),
             padding: EdgeInsets.only(
                 top: 2.h, bottom: 1.h, left: 2.w, right: 2.w),
             elevation: 2,
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(25),
             ),
           ),
           child: Text(
             'ابدا',
             
             style: TextStyle(
               fontSize: 25,
               fontWeight: FontWeight.w500,
               color: Colors.white,
               fontFamily: 'Tajawal',
             ),
           ),
           onPressed:onPressed,
         ),
       );
  }
}