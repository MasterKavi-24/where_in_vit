import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:where_in_vit/screens/home_screen.dart';
import 'package:where_in_vit/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const LoginScreen();
        }
        return const HomeScreen();
      },
    );
  }
}
