// ignore_for_file: unnecessary_const

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
            child: SvgPicture.asset("assets/"))
        ],
      ),
    );
  }
}
