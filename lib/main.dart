import 'package:authentication/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MaterialApp(
     home: Welcome(),
    debugShowCheckedModeBanner: false,
  ));
}
