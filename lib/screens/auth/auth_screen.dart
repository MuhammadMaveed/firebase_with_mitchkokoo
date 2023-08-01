import 'dart:ffi';

import 'package:firebase_with_mitchkokoo/screens/login_screen.dart';
import 'package:firebase_with_mitchkokoo/screens/signup_screen.dart';
import 'package:flutter/material.dart';
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  bool showLoginpage=true;

  void toggleScreen(){
    setState(() {
      showLoginpage=!showLoginpage;
    });
  }

  @override
  Widget build(BuildContext context) {
   if(showLoginpage){
     return LoginScreen(ShowRegisterPage:toggleScreen,);
   }
   else {
     return SignUpScreen(showloginscreen:toggleScreen ,);
   }
  }
}
