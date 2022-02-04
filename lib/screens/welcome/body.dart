// ignore_for_file: unnecessary_const

import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kprimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/main_top.png",color: const Color.fromARGB(255, 24, 194, 52),height: 130)),
              Positioned(
              top: 0,
              right: 0,
              child: Image.asset("assets/main_top.png",color: const Color.fromARGB(255, 24, 194, 52),height: 130)),
              Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/main_top.png",color: const Color.fromARGB(255, 24, 194, 52),height: 130)),
              Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/main_top.png",color: const Color.fromARGB(255, 24, 194, 52),height: 130))
          ],
        ),
      ),
    );
  }
}
