// ignore_for_file: unnecessary_const

import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            child,
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset("assets/main_top.png",
                    color: const Color.fromARGB(255, 24, 194, 52),
                    height: 130)),
            Positioned(
                top: 0,
                right: 0,
                child: Image.asset("assets/main_top.png",
                    color: const Color.fromARGB(255, 24, 194, 52),
                    height: 130)),
            Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset("assets/login_bottom.png",
                    color: const Color.fromARGB(255, 24, 194, 52), height: 130))
          ],
        ),
      ),
    );
  }
}
