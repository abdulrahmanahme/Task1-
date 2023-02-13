import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:task/view/create_account.dart';
import 'package:task/view/create_business.dart';
import 'package:task/view/discount_screen.dart';
import 'package:task/view/layout_screen.dart';
import 'package:task/view/login_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
          
          duration: 200,
          splash: SplashScreen(),
          
          nextScreen: DiscountScreen(),
          backgroundColor: Color(0xff0093F5),
        
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 800,
               
        ),
        // home: SplashScreen(),
        // home: DiscountScreen(),
      );
    });
  }
}
