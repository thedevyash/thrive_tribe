import 'package:flutter/material.dart';
import 'package:thrive_tribe/HomeScreen.dart';
import 'package:thrive_tribe/Pages/ChatBot.dart';
import 'package:thrive_tribe/Pages/CommunityPage.dart';
import 'package:thrive_tribe/Pages/Settings.dart';
import 'package:thrive_tribe/Pages/TODO.dart';

// ignore: camel_case_types
class models {
  static const List<Widget> _pages = [
    HomeScreen(),
    CommunityPage(),
    ChatBot(),
    TODO(),
    Settings()
  ];
  static const List<BottomNavigationBarItem> items = [];
}
