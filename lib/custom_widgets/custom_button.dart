import 'package:flutter/material.dart';

import '../utils/app_constants.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.myText,
    this.textColor,
    this.textbold,
    this.textsize, this.radius=15,
  });

  final String myText;
  final Color? textColor;
  final FontWeight? textbold;
  final double? textsize;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppConstant.purplrColor,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: Center(
        child: Text(
          myText,
          style: TextStyle(
              color: textColor, fontWeight: textbold, fontSize: textsize),
        ),
      ),
    );
  }
}
