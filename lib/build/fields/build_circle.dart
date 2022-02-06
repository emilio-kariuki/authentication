import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class BuildCircle extends StatelessWidget {
  final String svgUrl;
  const BuildCircle({Key? key, required this.svgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,right:8),
      child: Container(
        height: 45,
        width: 45,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 10),
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1,color: kaccentColor)
        ),
        child: SvgPicture.asset(svgUrl,height: 20,width: 20),
      ),
    );
  }
}
