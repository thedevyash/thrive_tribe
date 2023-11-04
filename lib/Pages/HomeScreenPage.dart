import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_tribe/cards/expertAdv.dart';
import 'package:thrive_tribe/cards/fitness.dart';
import 'package:thrive_tribe/cards/meditation.dart';
import 'package:thrive_tribe/cards/moodTracker.dart';
import 'package:thrive_tribe/cards/sleep.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Good Evening,",
                    style: GoogleFonts.epilogue(
                      textStyle: TextStyle(fontSize: 30),
                    ),
                  ),
                  Text(
                    "Aloo !",
                    style: GoogleFonts.epilogue(
                      textStyle:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Meditation(), Mood()],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [SleepC(), ExpertAdv()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [FitnessC()],
              )
            ])));
  }
}

class Meditation extends StatelessWidget {
  const Meditation({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => mediCard(),
        ),
      ),
      child: Card(
        elevation: 16,
        shadowColor: const Color.fromARGB(255, 0, 0, 0),
        clipBehavior: Clip.hardEdge,
        color: Color.fromARGB(255, 0, 0, 0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        child: SizedBox(
          height: 200,
          width: 150,
          child: Container(
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/medi.png")),
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Vx.hexToColor("#4A148C"), Vx.hexToColor("#311B92")]),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Text(
                "Meditate",
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 26,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

class Mood extends StatelessWidget {
  const Mood({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => moodTracker(),
        ),
      ),
      child: Card(
          elevation: 16,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          color: Color.fromARGB(255, 0, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: SizedBox(
              height: 200,
              width: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Vx.hexToColor("#4A148C"),
                        Vx.hexToColor("#311B92")
                      ]),
                  image: DecorationImage(
                      image: AssetImage("assets/images/mood.png")),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "How ya feel?",
                          style: GoogleFonts.lobster(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                      ]),
                ),
              ))),
    );
  }
}

class SleepC extends StatelessWidget {
  const SleepC({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Sleep(),
        ),
      ),
      child: Card(
          elevation: 16,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          color: Color.fromARGB(255, 0, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: SizedBox(
              height: 200,
              width: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Vx.hexToColor("#4A148C"),
                        Vx.hexToColor("#311B92")
                      ]),
                  image: DecorationImage(
                      scale: 3, image: AssetImage("assets/images/sleep.png")),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Sleep",
                          style: GoogleFonts.lobster(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ]),
                ),
              ))),
    );
  }
}

class ExpertAdv extends StatelessWidget {
  const ExpertAdv({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Expert(),
        ),
      ),
      child: Card(
          elevation: 16,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          color: Color.fromARGB(255, 0, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: SizedBox(
              height: 200,
              width: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Vx.hexToColor("#4A148C"),
                        Vx.hexToColor("#311B92")
                      ]),
                  image: DecorationImage(
                      scale: 3,
                      image: AssetImage("assets/images/ExpertAdv.png")),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Expert Advice",
                          style: GoogleFonts.lobster(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ]),
                ),
              ))),
    );
  }
}

class FitnessC extends StatelessWidget {
  const FitnessC({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Fitness(),
        ),
      ),
      child: Card(
          elevation: 16,
          shadowColor: const Color.fromARGB(255, 0, 0, 0),
          color: Color.fromARGB(255, 0, 0, 0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
          child: SizedBox(
              height: 200,
              width: 150,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Vx.hexToColor("#4A148C"),
                        Vx.hexToColor("#311B92")
                      ]),
                  image: DecorationImage(
                      scale: 3.5,
                      image: AssetImage("assets/images/Fitness.png")),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Health",
                          style: GoogleFonts.lobster(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                      ]),
                ),
              ))),
    );
  }
}
