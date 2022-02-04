// ignore_for_file: unnecessary_const

import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatefulWidget {
  Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          const Text("Emilio"),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/main_top.png",color: kaccentColor))
        ],
      ),
    );
  }
}
