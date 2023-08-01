import 'package:firebase_with_mitchkokoo/screens/home_screen.dart';
import 'package:firebase_with_mitchkokoo/screens/login_screen.dart';
import 'package:firebase_with_mitchkokoo/screens/auth/main_screen.dart';
import 'package:firebase_with_mitchkokoo/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //home:LoginScreen(),
      //home:HomePage() ,
      //home:SignUpScreen() ,
      home:MainScreen() ,
    );
  }
}
