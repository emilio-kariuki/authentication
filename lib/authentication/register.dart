// ignore_for_file: unnecessary_const

import "package:flutter/material.dart";


class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: const Text("Register")),
    );
  }
}