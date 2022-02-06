// ignore_for_file: avoid_print

import "package:flutter/material.dart";

import "package:firebase_auth/firebase_auth.dart";

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  //Register user
  Future register(
      String email, String password, BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
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
