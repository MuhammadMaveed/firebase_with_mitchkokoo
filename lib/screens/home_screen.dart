import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_with_mitchkokoo/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final User = FirebaseAuth.instance.currentUser!;

  bool myText = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Signed In AS "+User.email!),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {

                  FirebaseAuth.instance.signOut();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: const CustomButton(
                    myText: "Sign Out",
                    textColor: Colors.white,
                    textsize: 18,
                    textbold: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
