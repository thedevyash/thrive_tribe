import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_tribe/Pages/ChatBot.dart';
import 'package:thrive_tribe/Pages/CommunityPage.dart';
import 'package:thrive_tribe/Pages/HomeScreenPage.dart';
import 'package:thrive_tribe/Pages/Settings.dart';
import 'package:thrive_tribe/Pages/TODO.dart';

import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  static const List<Widget> _pages = [
    HomeScreenPage(),
    CommunityPage(),
    ChatBot(),
    TODO(),
    Settings()
  ];
  void init() {
    super.dispose();
  }

  var _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(backgroundColor: Vx.hexToColor("#F8F8FF")),
      appBar: AppBar(
        shape: const BeveledRectangleBorder(),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(
            Icons.person,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () => scaffoldKey.currentState?.openDrawer(),
        ),
        titleSpacing: 85,
        title: Text(
          "ThriveTribe",
          style: GoogleFonts.lobster(
              textStyle: TextStyle(color: Colors.pink[300], fontSize: 35)),
        ),
      ),
      backgroundColor: Vx.hexToColor("#F8F8FF"),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Vx.hexToColor("#F8F8FF"),
        elevation: 0,
        selectedItemColor: Colors.pink[300],
        unselectedItemColor: Colors.black,
        enableFeedback: true,
        selectedLabelStyle: GoogleFonts.epilogue(),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(
                CupertinoIcons.house_alt_fill,
                size: 30,
              ),
              label: "Home",
              backgroundColor: Vx.hexToColor("#F8F8FF")),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.people,
                size: 30,
              ),
              label: "Community",
              backgroundColor: Vx.hexToColor("#F8F8FF")),
          BottomNavigationBarItem(
            backgroundColor: Vx.hexToColor("#F8F8FF"),
            icon: const Icon(
              CupertinoIcons.chat_bubble,
              size: 30,
            ),
            label: "ChatBot",
          ),
          BottomNavigationBarItem(
              icon: const Icon(
                CupertinoIcons.square_list,
                size: 30,
              ),
              label: "ToDo",
              backgroundColor: Vx.hexToColor("#F8F8FF")),
          BottomNavigationBarItem(
              icon: const Icon(
                CupertinoIcons.settings_solid,
                size: 30,
              ),
              label: "Settings",
              backgroundColor: Vx.hexToColor("#F8F8FF"))
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
