import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatBot extends StatefulWidget {
  const ChatBot({super.key});

  @override
  State<ChatBot> createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("ChatBOT"),
      backgroundColor: Vx.hexToColor("#F8F8FF"),
    );
  }
}
