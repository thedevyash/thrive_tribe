import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thrive_tribe/Constants/Colors.dart';
import 'package:thrive_tribe/HomeScreen.dart';
import 'package:thrive_tribe/Pages/HomeScreenPage.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purp,
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Container(
          constraints: BoxConstraints(maxHeight: 500),
          decoration: BoxDecoration(
              color: purpLight, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: TextButton.styleFrom(
                        fixedSize: Size(300, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/ca/g_logo.svg",
                            width: 30, color: purp),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Google",
                          style: GoogleFonts.poppins(
                              color: purp,
                              fontSize: 23,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )),
                Text("Sign in",
                    style: GoogleFonts.poppins(color: purpAcc, fontSize: 23)),
                TextFormField(
                  decoration: InputDecoration(
                      focusColor: purp,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: purp)),
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      hintStyle: GoogleFonts.poppins()),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: purp)),
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      hintStyle: GoogleFonts.poppins()),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text("Don't have an accout? Sign Up",
                      style: GoogleFonts.poppins(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                ),
                MaterialButton(
                  height: 50,
                  elevation: 0,
                  color: purpLight,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomeScreen())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Continue",
                          style:
                              GoogleFonts.poppins(fontSize: 23, color: purp)),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded, color: purp),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
