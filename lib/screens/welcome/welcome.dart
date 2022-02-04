// ignore_for_file: unnecessary_const

import 'package:authentication/Constants/colors.dart';
import 'package:authentication/build/custom_button.dart';
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
    final mediaQuery = MediaQuery.of(context).size;
    return BackGround(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
      children: [
            SvgPicture.asset("assets/svg/chat.svg",height: mediaQuery.height * 0.4),
            const SizedBox(height: 60),
            CustomButton(
              func: (){},
              action: "Register"),
            const SizedBox(height: 15,),
            CustomButton(
              func: (){},
              action: "Login")
      ],
    ),
          ),
        ));
  }
}
