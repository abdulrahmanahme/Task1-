
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
            Container(
              height: Device.orientation == Orientation.portrait ? 20.h : 38.h,
              width: Device.orientation == Orientation.portrait ? 90.w : 40.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(35.0)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image/hun.png")),
              ),
            ),
          
          ],
        ),
      ),
    );
  }
}