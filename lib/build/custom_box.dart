// ignore_for_file: avoid_unnecessary_containers

import 'package:authentication/Constants/colors.dart';
import 'package:authentication/build/build_container.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class CustomBox extends StatelessWidget {
  final Function() func;
  final String iconUrl;
  final String action;
  const CustomBox({Key? key, required this.func, required this.iconUrl, required this.action})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: func,
        child: BuildContainer(
          color: kprimaryColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(action,style: GoogleFonts.robotoCondensed(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold)),
              Image.asset(iconUrl, color: Colors.white,height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}
