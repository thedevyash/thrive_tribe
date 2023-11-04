import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_tribe/Constants/Colors.dart';
import 'package:thrive_tribe/Pages/ChatBot.dart';
import 'package:thrive_tribe/Pages/CommunityPage.dart';
import 'package:thrive_tribe/Pages/HomeScreenPage.dart';
import 'package:thrive_tribe/Pages/Settings.dart';
import 'package:thrive_tribe/Pages/TODO.dart';
import 'package:url_launcher/url_launcher.dart';

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

  _launchURL() async {
    final Uri url = Uri.parse('https://github.com/thedevyash');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        drawer: Drawer(
          backgroundColor: Vx.hexToColor("#F8F8FF"),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(minHeight: 300),
                  decoration: BoxDecoration(
                      color: purpAcc,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.elliptical(20, 20),
                          bottomRight: Radius.circular(30))),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Version 1.0",
                          style: GoogleFonts.poppins(fontSize: 23)),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: _launchURL,
                        child: Text("Github",
                            style:
                                GoogleFonts.poppins(fontSize: 23, color: purp)),
                      )
                    ],
                  ),
                )
              ]),
        ),
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
        bottomNavigationBar: CurvedNavigationBar(
            color: purpLight,
            animationDuration: Duration(milliseconds: 250),
            backgroundColor: Vx.hexToColor("#F8F8FF"),
            onTap: _onItemTapped,
            buttonBackgroundColor: purpAcc,
            height: 60,
            items: [
              Icon(
                CupertinoIcons.house_alt_fill,
                size: 30,
              ),
              Icon(
                Icons.people,
                size: 30,
              ),
              Icon(
                CupertinoIcons.chat_bubble,
                size: 30,
              ),
              Icon(
                CupertinoIcons.square_list,
                size: 30,
              ),
              Icon(
                CupertinoIcons.settings_solid,
                size: 30,
              ),
            ]));
  }
}
