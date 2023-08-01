import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_widgets/custom_button.dart';
import '../custom_widgets/custom_text.dart';
import '../custom_widgets/custom_textformfield.dart';
import '../utils/app_constants.dart';
import 'forgot_password.dart';
import 'home_screen.dart';

class SignUpScreen extends StatefulWidget {
  final VoidCallback? showloginscreen;
  const SignUpScreen({Key? key, this.showloginscreen}): super (key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwdcontroller = TextEditingController();
  final TextEditingController _conformpwdcontroller = TextEditingController();

  Future SignUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailcontroller.text.trim(),
        password: _pwdcontroller.text.trim());
  }

  @override
  void dispose() {
    _emailcontroller.dispose();
    _pwdcontroller.dispose();
    _conformpwdcontroller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Icon(
                    Icons.phone_android,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("Hello There !",
                      style: GoogleFonts.bebasNeue(fontSize: 52)),
                  const SizedBox(
                    height: 5,
                  ),
                  const CustomText(
                    myText: "Register below with your details",
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
                  const SizedBox(
                    height: 30,
                  ),
                  CustomTextformfield(
                    myConroller: _conformpwdcontroller,
                    obsecure: true,
                    borberColor: Colors.white,
                    labeltext: "Conform Password",
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
                      SignUp();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    child: const CustomButton(
                        myText: "Sign Up",
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
                        myText: "I am a member?",
                        textsize: 16,
                      ),
                      GestureDetector(
                        onTap:widget.showloginscreen,
                        child: const CustomText(
                          myText: "Login Now",
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
    );
  }
}
