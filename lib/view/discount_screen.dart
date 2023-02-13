import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:task/view/login_screen.dart';
import 'package:task/viewmodel/component/widgets/button.dart';
import 'package:task/viewmodel/component/widgets/button_start.dart';
import 'package:task/viewmodel/component/widgets/startIcon_widget.dart';

class DiscountScreen extends StatelessWidget {
  const DiscountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
               topLeft: Radius.circular(20),
            ),
            child: Container(
              height: Device.orientation == Orientation.portrait ? 82.h : 49.h,
              // width: Device.orientation == Orientation.portrait? 5.w:60.w,
              decoration: BoxDecoration(
                // color: Colors.amber,

                image:const DecorationImage(
                  image: AssetImage('assets/image/discount.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
                // shape: BoxShape.circle,
              ),
            ),
          ),
          Spacer(),
          ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Column(
                children: [
                  Row(
                    children: [
                      StartIcon(
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  Container(
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              StartIcon(
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 1.h,
                              ),
                              StartIcon(
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 1.h,
                              ),
                              StartIcon(
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                width: 1.h,
                              ),
                              StartIcon(
                                color: Colors.grey.shade400,
                              ),
                               SizedBox(
                                width: 1.h,
                              ),
                              StartIcon(
                                color: Colors.blue,
                              ),
                             
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          ButtonStart(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginScreen())));
                            },

                          ),
                        ],
                      ),
                      color: Colors.white),
                ],
              )),
        ],
      ),
    );
  }
}
