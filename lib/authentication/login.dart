import 'package:authentication/Constants/colors.dart';
import 'package:authentication/authentication/register.dart';
import 'package:authentication/build/custom_box.dart';
import 'package:authentication/build/fields/custom_field.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
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
                  padding: const EdgeInsets.only(left: 16),
                  child: CustomBox(
                      func: () {
                        setState(() {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
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
                    child: Container(
                  margin: const EdgeInsets.only(left: 15, right: 10),
                  child: const Divider(
                    thickness: 1,
                    height: 50,
                    color: kaccentColor,
                  ),
                )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Center(
                  child: SvgPicture.asset(
                "assets/svg/login.svg",
                height: mediaQuery.height * 0.2,
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person, color: Colors.blueGrey[900],size: 20),
                    fillColor: Colors.grey[200]),
                controller: name,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    // icon: Icon(Icons.person,size:30,color: Colors.black),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    focusColor: Colors.red,
                    hintText: "Email",
                    prefixIcon: Icon(Icons.person, color: Colors.blueGrey[900]),
                    fillColor: Colors.grey[200]),
                controller: name,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
