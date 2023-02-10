import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
class Burderbutton extends StatelessWidget {
  const Burderbutton({
    Key? key,
    this.name,
    this.name1,
    this.onPressed
  }) : super(key: key);
  final String ?name;
  final String ?name1;
 final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.only(
              top: 2.h, bottom: 1.h, left: 2.w, right: 2.w),
          elevation: 2,
          side: BorderSide(
            color: Color(0XFF0099FF),
            width: 1.2,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          Text(
            name!,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Color(0XFF0099FF),
              fontFamily: 'Tajawal',
            ),
          ),
          SizedBox(
            width: 1.w,

          ),
            Text(
          name1!,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontFamily: 'Tajawal',
            ),
          ), ],
        ),
        onPressed:  onPressed,
      ),
    );
  }
}
