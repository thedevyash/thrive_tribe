import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'dart:async';

import 'package:thrive_tribe/HomeScreen.dart';
import 'package:thrive_tribe/login/onboarding.dart';

class splashservices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;
    if (user != null) {
      Timer(
          const Duration(seconds: 2),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => const HomeScreen()))));
    } else {
      Timer(
          Duration(seconds: 2),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: ((context) => OnboardingScreen()))));
    }
  }
}
