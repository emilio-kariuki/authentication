// ignore_for_file: avoid_print

import 'package:authentication/Constants/colors.dart';
import "package:flutter/material.dart";

import "package:firebase_auth/firebase_auth.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;

  //Register user
  Future register(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
          await user?.sendEmailVerification();
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("The password is to weak",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("The account already exists for that email",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      }
    } catch (e) {
      print(e);
    }
  }

  Future login(String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("No user found for that email",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("Wrong password Try again",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      }
    }
  }

  static Future<User?> signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("Account exists with differetn credentials ",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
        }
        else if (e.code == 'invalid-credential') {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("Invalid credentials",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
        }
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("Error occured during google sign in please try again",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
      }
    }

    return user;
  }
  static Future<void> signOut({required BuildContext context}) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      if (!kIsWeb) {
        await googleSignIn.signOut();
      }
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            content: (Text("Error signing out",
                style: GoogleFonts.roboto(fontSize: 19, color: kaccentColor))),
            backgroundColor: const Color.fromARGB(255, 165, 123, 32),
            duration: const Duration(milliseconds: 900)));
    }
  }
}
