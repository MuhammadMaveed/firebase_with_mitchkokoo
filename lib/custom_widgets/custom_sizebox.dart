import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  final double? hight;
  final double? width;

  const CustomSizeBox({super.key, this.hight = 10, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: hight!,
      width: width!,
    );
  }
}
