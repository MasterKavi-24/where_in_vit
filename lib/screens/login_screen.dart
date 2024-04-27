import 'package:flutter/material.dart';
import 'package:where_in_vit/screens/home_screen.dart';
import 'package:where_in_vit/services/google_service.dart';
import 'package:where_in_vit/widgets/login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GoogleAuth _googleAuth = GoogleAuth();

  Future<void> redirect(
      Widget redirectPage, RouteSettings routeSettings) async {
    await Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => redirectPage,
        settings: routeSettings,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/VITC_Logo.png',
              ),
              const Row(
                children: [
                  Text(
                    "Welcome to Where In VIT",
                    style: TextStyle(),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LoginButton(
                    image: "assets/images/students.png",
                    text: "Student",
                    onTap: () {
                      _googleAuth.signInWithGoogle("vitstudent.ac.in"
                          /*)
                          .then(
                            (value) => redirect(
                              const HomeScreen(),
                              const RouteSettings(),
                            ),*/
                          );
                      /*_googleAuth
                          .signInWithGoogle(
                            context: context,
                            hostedDomain: "vitstudent.ac.in",
                          )
                          .then(
                            (value) => redirect(
                              const HomeScreen(),
                              const RouteSettings(),
                            ),
                          );*/
                    },
                  ),
                  LoginButton(
                    image: "assets/images/employee.png",
                    text: "Employee",
                    onTap: () {
                      _googleAuth.signInWithGoogle("vit.ac.in").then(
                            (value) => redirect(
                              const HomeScreen(),
                              const RouteSettings(),
                            ),
                          );
                      /*_googleAuth
                          .signInWithGoogle(
                            context: context,
                            hostedDomain: "vit.ac.in",
                          )
                          .then(
                            (value) => redirect(
                              const HomeScreen(),
                              const RouteSettings(),
                            ),
                          );*/
                    },
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Trouble logging in ? ",
                    style: TextStyle(),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Contact Us",
                      style: TextStyle(
                        color: Color(0xFF2865B0),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        /*SignInScreen(
          providers: [
            GoogleProvider(
              clientId:
                  "366474821530-1jr7cf299h9tsgkb2te0ktvsit486lod.apps.googleusercontent.com",
              // secret: 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
            ),
          ],
          headerBuilder: (context, constraints, _) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/VITC_Logo.png',
              ),
            );
          },
          showAuthActionSwitch: false,
          subtitleBuilder: (context, action) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                  "Welcome to Where In VIT.\nPlease log in using your VIT E-Mail Address"
                  */ /*action == AuthAction.signIn
                    ? 'Welcome to FlutterFire UI! Please sign in to continue.'
                    : 'Welcome to FlutterFire UI! Please create an account to continue',
                */ /*
                  ),
            );
          },
        ),*/
      ),
    );
  }
}
