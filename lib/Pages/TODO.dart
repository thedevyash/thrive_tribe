import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TODO extends StatefulWidget {
  const TODO({super.key});

  @override
  State<TODO> createState() => _TODOState();
}

class _TODOState extends State<TODO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text("TODO"), backgroundColor: Vx.hexToColor("#F8F8FF"));
  }
}
