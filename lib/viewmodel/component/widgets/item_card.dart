import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileButton extends StatelessWidget {
  ImageProvider<Object>? icon;
  String? name;
  String? type;

  ProfileButton({this.icon, this.name, this.type});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
   
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PhysicalModel(
  color: Colors.white,
  elevation: 8,
  shadowColor: Colors.black,
  borderRadius: BorderRadius.circular(10),


        
              child: Container(
                height: 5.2.h,
                width: 10.w,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  //  shape: BoxShape.circle,
            
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ImageIcon(
                  icon,
                  color: Color(0xff0093F5),
                ),
              ),
            ),
           
           
            SizedBox(
              width: 2.5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: TextStyle(
                    fontSize: 17.sp,
                    color: Colors.black,
                    // fontWeight: FontWeight.w500,
                    fontFamily: 'Tajawal',
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        type!,
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.grey,
                          // fontWeight: FontWeight.w500,
                          fontFamily: 'Tajawal',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
