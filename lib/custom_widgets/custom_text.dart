import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String myText;
  final Color? textColor;
  final FontWeight? textbold;
  final double? textsize;

  const CustomText(
      {super.key,
      required this.myText,
      this.textColor=Colors.black,
      this.textbold=FontWeight.normal,
      this.textsize=12,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      myText,
      style: TextStyle(
          color: textColor!, fontWeight: textbold!, fontSize: textsize!),
    );
  }
}
