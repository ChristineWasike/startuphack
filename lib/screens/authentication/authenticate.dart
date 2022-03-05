import 'package:flutter/material.dart';
import 'package:startuphack/screens/authentication/register.dart';
import 'package:startuphack/screens/authentication/signin.dart';
// import '../onboarding/onboard.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() => showSignIn = !showSignIn);
  }

  // Deciding on whether to display Sign In or SignUp
  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
