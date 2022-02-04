// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:authentication/build/fields/build_field.dart';
import "package:flutter/material.dart";

class CustomField extends StatelessWidget {
  final TextEditingController name;
  const CustomField({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BuildField(
        child: TextFormField(
          controller: name,
          
        ),
      ),
    );
  }
}
