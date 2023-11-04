import 'dart:math';

import 'package:flutter/material.dart';
import 'package:thrive_tribe/Auth/splash_servic.dart';

// ignore: camel_case_types
class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

// ignore: camel_case_types
class _splashscreenState extends State<splashscreen> {
  List<String> images = [];
  @override
  void initState() {
    splashservices splashservice = splashservices();

    super.initState();

    splashservice.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: FutureBuilder(
          future: Future.delayed(Duration(seconds: 0)),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return Container();
          },
        ),
      ),
    );
  }
}
