import 'package:authentication/Constants/colors.dart';
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
      backgroundColor: kprimaryColor,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
        children: [
            Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:16),
                  child: CustomBox(
                      func: () {
                        setState(() {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (context) => const Register()));
                        });
                      },
                      iconUrl: 'assets/icons/register.png',
                      action: "Register"),
                ),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                 Expanded(
                  child:  Container(
                    margin: const EdgeInsets.only(left: 15,right: 10),
                    child: const Divider(
                      thickness: 1,
                      height: 50,
                      color: kaccentColor,
                    ),
                  )),
              ],
            ),
            

        ],
      ),
          )),
    );
  }
}
