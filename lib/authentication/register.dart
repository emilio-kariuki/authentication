// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:authentication/Constants/colors.dart';
import 'package:authentication/authentication/login.dart';
import 'package:authentication/build/custom_box.dart';
import "package:flutter/material.dart";


class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: SafeArea(
          child: Column(
        children: [
          CustomBox(
              func: () {
                setState(() {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login()));
                });
              },
              iconUrl: 'assets/icons/login.png',
              action: "Login")
        ],
      )),
    );
  }
}