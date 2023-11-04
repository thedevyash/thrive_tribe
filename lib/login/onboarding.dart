import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thrive_tribe/Constants/Colors.dart';
import 'package:thrive_tribe/login/signin.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();
  var tap = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          child: PageView(
            controller: _controller,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage("assets/ca/ca.jpg"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Welcome to ThriveTribe 🌟 Discover your emotions, track your journey, and find your inner calm.",
                        style: GoogleFonts.poppins(
                            color: purpAcc,
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage("assets/ca/ca2.jpg"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "Embrace the power of self-awareness 🧘‍♀️ Log your daily moods, reflect, and start your path to well-being.",
                          style: GoogleFonts.poppins(
                              color: purpAcc,
                              fontSize: 22,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    )),
              ),
              Container(
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80,
                          backgroundImage: AssetImage("assets/ca/ca3.jpg"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          "See your spirit bloom 🌱 Journey through the week with vibrant mood charts and let your feelings paint a beautiful story.",
                          style: GoogleFonts.poppins(
                              color: purpAcc,
                              fontSize: 22,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        constraints: BoxConstraints(minHeight: 80),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: GoogleFonts.poppins(
                      color: purp, fontSize: 20, fontWeight: FontWeight.w600),
                )),
            SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(dotColor: purpAcc, activeDotColor: purp)),
            IconButton(
                onPressed: tap < 2
                    ? () {
                        _controller.nextPage(
                            duration: Duration(milliseconds: 400),
                            curve: Curves.decelerate);

                        setState(() {
                          tap++;
                        });
                      }
                    : () {
                        tap = 0;
                        Navigator.of(context).push(
                            CupertinoPageRoute(builder: (context) => SignIn()));
                      },
                icon: Icon(Icons.arrow_forward_ios))
          ],
        ),
      ),
    ));
  }
}
