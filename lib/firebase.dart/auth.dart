import "package:flutter/material.dart";

import "package:firebase_auth/firebase_auth.dart";

class Auth {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> RegisterUser(
      String email, String password, String name, BuildContext context) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userCredential;
  }
}
