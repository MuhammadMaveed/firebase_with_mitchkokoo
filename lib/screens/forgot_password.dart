import 'package:firebase_with_mitchkokoo/custom_widgets/custom_button.dart';
import 'package:firebase_with_mitchkokoo/custom_widgets/custom_text.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_textformfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomText(
                  myText:
                      "Enter your Email and we will send you a password reset link",
                  textbold: FontWeight.bold,
                  textsize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextformfield(
              borberColor: Colors.white,
              labeltext: "Email",
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap:(){} ,
              child: CustomButton(

                myText: "Reset Password",
                textColor: Colors.white,
                textbold: FontWeight.bold,
                textsize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
