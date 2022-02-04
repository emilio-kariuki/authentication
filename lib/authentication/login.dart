import 'package:authentication/authentication/register.dart';
import 'package:authentication/build/custom_box.dart';
import "package:flutter/material.dart";

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: [
            CustomBox(
                func: () {
                  setState(() {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Register()));
                  });
                },
                iconUrl: 'assets/icons/register.png',
                action: "Register")
        ],
      ),
          )),
    );
  }
}
