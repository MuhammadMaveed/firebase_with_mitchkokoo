import 'package:flutter/material.dart';

import '../utils/app_constants.dart';


class CustomTextformfield extends StatelessWidget {
  final TextEditingController? myConroller;
  final Icon? preIcon;
  final Icon? suffIcon;
  final String hinttext;
  final String labeltext;
  final bool? obsecure;
  final double? hintsize;
  final Color? hintcolor;
  final FontWeight? hintweight;
  final double? labelsize;
  final Color? labelcolor;
  final FontWeight? labelweight;
  final double? inputsize;
  final Color? inputcolor;
  final FontWeight? inputweight;

  final double? borberRadius;
  final Color? borberColor;
  final double? borberSide;

  final double? fborberRadius;
  final Color? fborberColor;
  final double? fborberSide;

  final double? enborberRadius;
  final Color? enborberColor;
  final double? enborberSide;

  final double? errborberRadius;
  final Color? errborberColor;
  final double? errborberSide;

  const CustomTextformfield({
    super.key,
    this.obsecure = false,
    this.hinttext = "",
    this.labeltext = "",

    this.hintsize = 16,
    this.hintcolor = Colors.black,
    this.hintweight = FontWeight.normal,
    this.labelsize = 16,
    this.labelcolor = Colors.black,
    this.labelweight = FontWeight.normal,
    this.inputsize = 16,
    this.inputcolor = Colors.black,
    this.inputweight = FontWeight.normal,
    this.borberRadius = 15,
    this.borberColor = AppConstant.purplrColor,
    this.borberSide = 2,
    this.fborberRadius = 15,
    this.fborberColor = AppConstant.purplrColor,
    this.fborberSide = 2,
    this.enborberRadius = 15,
    this.enborberColor = AppConstant.purplrColor,
    this.enborberSide = 2,
    this.errborberRadius = 15,
    this.errborberColor =AppConstant.purplrColor,
    this.errborberSide = 2,
    this.myConroller,
    this.preIcon,
    this.suffIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      controller: myConroller,
      style: TextStyle(
          fontSize: inputsize!, color: inputcolor!, fontWeight: inputweight!),
      keyboardType: TextInputType.text,
      obscureText: obsecure!,
      decoration: InputDecoration(
        fillColor:Colors.white ,
        filled:true ,
        prefixIcon: preIcon,
        suffixIcon: suffIcon,
        hintText: hinttext,
        hintStyle: TextStyle(
            fontSize: hintsize, color: hintcolor, fontWeight: hintweight),
        labelText: labeltext,
        labelStyle: TextStyle(
            fontSize: labelsize, color: labelcolor, fontWeight: labelweight),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borberRadius!),
          borderSide: BorderSide(color: borberColor!, width: borberSide!),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borberRadius!),
          borderSide: BorderSide(color: borberColor!, width: borberSide!),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(fborberRadius!),
          borderSide: BorderSide(color: fborberColor!, width: fborberSide!),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(errborberRadius!),
          borderSide: BorderSide(color: errborberColor!, width: errborberSide!),
        ),
      ),
    );
  }
}
