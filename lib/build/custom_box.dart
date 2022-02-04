import 'package:authentication/Constants/colors.dart';
import 'package:authentication/build/build_container.dart';
import "package:flutter/material.dart";

class CustomBox extends StatelessWidget {
  final Function() func;
  final String iconUrl;
  const CustomBox({Key? key, required this.func, required this.iconUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BuildContainer(
        color: kprimaryColor,
        child: Image.asset(iconUrl, color: Colors.white),
      ),
    );
  }
}
