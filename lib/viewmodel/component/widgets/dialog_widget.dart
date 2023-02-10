
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget dialog({Widget? widget ,double? height ,double ? width}){
  return Dialog(
  
  // backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)), //this right here
  child: ClipRect(
    
                  child: BackdropFilter(
                    filter:ImageFilter.blur(sigmaX: .8,sigmaY: .8) ,
                    child: Container(
                      height: height ,
                      width:  width,
                      //  color: Colors.white.withOpacity(.8),
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(18),
                      //  decoration: ,
                      decoration: BoxDecoration(
                        // color: Colors.white.withOpacity(.3),
                        // color: Color(0xffFFFFFF),
                  
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: widget,
                    ),
                  ),
                ),
);



}