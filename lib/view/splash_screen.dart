
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Timer timer;
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
 
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:  Color.fromARGB(255, 227, 84, 73),
      backgroundColor: Color(0xff0093F5),

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SizedBox(
height: 35.h,
       ),
            Padding(
              padding:  EdgeInsets.only(left: 5.w,right: 5.w),
              child: Container(
                height: Device.orientation == Orientation.portrait ? 20.h : 38.h,
                width: Device.orientation == Orientation.portrait ? 90.w : 40.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/image/hun.png")),
                ),
              ),
            ),
            Spacer(),
//              SizedBox(
// height: 30.h,
//        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Container(
                    height: 1.h,
         width: 42.w,
         child: ElevatedButton(
           style: ElevatedButton.styleFrom(
                   primary: Colors.white,
                  //  padding: EdgeInsets.only(
                  //      top: 0.1.h, bottom: 1.h, left: 2.w, right: 2.w),
                   elevation: 2,
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(25),
                   ),
           ),
           child: Text(
                   '',
                   
                   style: TextStyle(
                     fontSize: 25,
                     fontWeight: FontWeight.w500,
                     color: Colors.white,
                     fontFamily: 'Tajawal',
                   ),
           ),
           onPressed:(){},
         ),
       ),
                ),
              ],
            ),
      
          
          ],
        ),
      ),
    );
  }
}