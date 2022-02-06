// ignore_for_file: avoid_print

import "package:flutter/material.dart";

import "package:firebase_auth/firebase_auth.dart";

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<User?> register(
      String email, String password, String name, BuildContext context) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.message.toString()),
          duration: const Duration(milliseconds: 600)));
    } catch (e) {
      print(e);
    }
  }
}
