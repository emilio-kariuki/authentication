// ignore_for_file: avoid_print

import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";

import "package:firebase_auth/firebase_auth.dart";
import 'package:google_fonts/google_fonts.dart';

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  //Register user
  Future register(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await auth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            content: (Text("The password is to weak",
                style: GoogleFonts.roboto(
                    fontSize: 19, color: kaccentColor))),
            backgroundColor:
                const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            content: (Text("The account already exists for that email",
                style: GoogleFonts.roboto(
                    fontSize: 19, color: kaccentColor))),
            backgroundColor:
                const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      }
    } catch (e) {
      print(e);
    }
  }

  Future<User?> login(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
    return null;
  }

  // FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> _signOut() async {
    await auth.signOut();
  }

  //login user
  // Future<User?> login(String email, String password){

  // }
}
