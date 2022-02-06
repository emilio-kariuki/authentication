import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class BuildCircle extends StatelessWidget {
  final String svgUrl;
  const BuildCircle({Key? key, required this.svgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2,color: kaccentColor)
      ),
      child: SvgPicture.asset(svgUrl),
    );
  }
}
