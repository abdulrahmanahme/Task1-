
import 'package:flutter/material.dart';

class StartIcon extends StatelessWidget {
  const StartIcon({
    Key? key,
    this.color,
  }) : super(key: key);
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ClipOval(child: Container(height: 10, width: 10, color: color));
  }
}