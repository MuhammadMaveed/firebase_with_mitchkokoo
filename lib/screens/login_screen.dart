import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_with_mitchkokoo/custom_widgets/custom_button.dart';
import 'package:firebase_with_mitchkokoo/custom_widgets/custom_text.dart';
import 'package:firebase_with_mitchkokoo/custom_widgets/custom_textformfield.dart';
import 'package:firebase_with_mitchkokoo/screens/forgot_password.dart';
import 'package:firebase_with_mitchkokoo/screens/home_screen.dart';
import 'package:firebase_with_mitchkokoo/screens/signup_screen.dart';
import 'package:firebase_with_mitchkokoo/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_overlay/loading_overlay.dart';

class LoginScreen extends StatefulWidget {
  final VoidCallback? ShowRegisterPage;
  const LoginScreen({Key? key,this.ShowRegisterPage}):super (key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwdcontroller = TextEditingController();

  bool isloading=false;
  makeloadingtrue(){
    setState(() {
       isloading=true;
    });
  }
  makeloadingfalse(){
    setState(() {
      isloading=false;
    });
  }

  Future LogIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _pwdcontroller.text.trim());
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _pwdcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: LoadingOverlay(
        isLoading:isloading,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 70,
                    ),
                    const Icon(
                      Icons.phone_android,
                      size: 100,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text("Hello Again!",
                        style: GoogleFonts.bebasNeue(fontSize: 52)),
                    const SizedBox(
                      height: 5,
                    ),
                    const CustomText(
                      myText: "Welcome back on login Screen",
                      textsize: 20,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextformfield(
                      myConroller: _emailcontroller,
                      borberColor: Colors.white,
                      labeltext: "Email",
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextformfield(
                      myConroller: _pwdcontroller,
                      obsecure: true,
                      borberColor: Colors.white,
                      labeltext: "Password",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    /// Forgot
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.end,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {
                    //         Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //               builder: (context) => ForgotPassword(),
                    //             ));
                    //       },
                    //       child: const CustomText(
                    //         myText: "Forgot Password",
                    //         textbold: FontWeight.bold,
                    //         textColor: AppConstant.purplrColor,
                    //         textsize: 16,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        makeloadingtrue();
                        LogIn();
                        makeloadingfalse();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      },
                      child: const CustomButton(
                          myText: "Sign In",
                          textColor: Colors.white,
                          textsize: 18,
                          textbold: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CustomText(
                          myText: "Not a member?",
                          textsize: 16,
                        ),
                        GestureDetector(
                          onTap: widget.ShowRegisterPage,
                          child: const CustomText(
                            myText: "Register Now",
                            textbold: FontWeight.bold,
                            textColor: AppConstant.purplrColor,
                            textsize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
