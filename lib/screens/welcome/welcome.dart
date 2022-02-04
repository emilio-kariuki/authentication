// ignore_for_file: unnecessary_const

import 'package:authentication/Constants/colors.dart';
import 'package:authentication/screens/welcome/body.dart';
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
    return const BackGround(
      child: const Center(child: Text("Emilio"),));
  }
}
