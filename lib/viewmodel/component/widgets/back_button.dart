import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2.h,
      width: 2.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: EdgeInsets.only(
              top: 0.5.h, bottom: 0.5.h, left: .5.w, right: 0.5.w),
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(
              color: Colors.grey.shade200,
              width: 1.2,
            ),
          ),
        ),
        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 25,
          color: Color(0XFF0099FF),
        ),
        onPressed: () {
          Navigator.pop(context);
          // if (_dropdownFormKey.currentState!.validate()) {}
          // Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //         builder: (context) => Secondscreen()));
        },
      ),
    );
  }
}