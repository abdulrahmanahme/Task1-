import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Textwidget extends StatelessWidget {
  final String? name;
  const Textwidget({
    this.name,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
     name!,
      style: TextStyle(
        color: Colors.black,
        fontSize: 17.sp,
        fontWeight: FontWeight.w500,
        fontFamily: 'Tajawal',
      ),
    );
  }
}

class IconText extends StatelessWidget {
  const IconText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ' * ',
      style: TextStyle(
        color: Colors.red,
        fontSize: 17.sp,
        fontWeight: FontWeight.w400,
        fontFamily: 'Tajawal',
      ),
    );
  }
}
