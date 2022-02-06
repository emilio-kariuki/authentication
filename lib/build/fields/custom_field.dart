// ignore_for_file: prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:authentication/Constants/colors.dart';
import 'package:authentication/build/fields/build_field.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class CustomField extends StatelessWidget {
  final String iconUrl;
   final  action = TextEditingController();
  CustomField({Key? key, required this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Container(
      child: BuildField(
        child: TextFormField(
          controller: action,
          decoration: InputDecoration(
            hintStyle: GoogleFonts.roboto(fontSize: 20, color: kTextColor),
            hintText: "password",
            prefixIcon: Image.asset(iconUrl, color: kprimaryColor,height: 5 ,width: 10),
          ),
        ),
      ),
    );
  }
}
