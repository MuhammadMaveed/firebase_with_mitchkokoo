import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_with_mitchkokoo/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../home_screen.dart';
import 'auth_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          }
          else {
            return AuthScreen();
          }
        },
      ),
    );
  }
}
