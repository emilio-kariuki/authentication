// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:authentication/Constants/colors.dart';
import 'package:authentication/authentication/login.dart';
import 'package:authentication/build/custom_box.dart';
import 'package:authentication/build/custom_button.dart';
import 'package:authentication/build/fields/build_circle.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: CustomBox(
                        func: () {
                          setState(() {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          });
                        },
                        iconUrl: 'assets/icons/login.png',
                        action: "Login"),
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 10),
                    child: const Divider(
                      thickness: 0.5,
                      height: 50,
                      color: kaccentColor,
                    ),
                  )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Center(
                    child: SvgPicture.asset(
                  "assets/svg/signup.svg",
                  height: mediaQuery.height * 0.3,
                )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      // icon: Icon(Icons.person,size:30,color: Colors.black),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      focusColor: Colors.red,
                      hintText: "Username",
                      prefixIcon: const Icon(Icons.person,
                          color: kprimaryColor, size: 20),
                      fillColor: Colors.grey[200]),
                  controller: name,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      // icon: Icon(Icons.person,size:30,color: Colors.black),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      focusColor: Colors.red,
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.mail,
                          color: kprimaryColor, size: 20),
                      fillColor: Colors.grey[200]),
                  controller: email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      // icon: Icon(Icons.person,size:30,color: Colors.black),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      focusColor: Colors.red,
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.lock,
                          color: kprimaryColor, size: 20),
                      fillColor: Colors.grey[200]),
                  controller: password,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 70, right: 70, top: 20, bottom: 10),
                child: CustomButton(func: () {}, action: "Register"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      child: const Divider(
                        thickness: 0.5,
                        height: 50,
                        color: kaccentColor,
                      ),
                    )),
                    Text("OR",
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: kaccentColor)),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      child: const Divider(
                        thickness: 0.5,
                        height: 50,
                        color: kaccentColor,
                      ),
                    )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                   BuildCircle(svgUrl: "assets/svg/google.svg", func: () {  },),
                   BuildCircle(svgUrl: "assets/svg/facebook-main.svg", func: () {  },),
                   BuildCircle(svgUrl: "assets/svg/twitter-main.svg", func: () {  },)
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
