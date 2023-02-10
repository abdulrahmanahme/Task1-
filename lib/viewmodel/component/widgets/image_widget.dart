
import 'package:flutter/cupertino.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    this.image,
  }) : super(key: key);
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4.h,
      width: 10.w,
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage(
           image! ),
        fit: BoxFit.cover,
        ),
        // shape: BoxShape.circle,
      ),
    );
  }
}