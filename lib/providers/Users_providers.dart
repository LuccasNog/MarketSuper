import 'package:app/models/Users_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class UsersProvider with ChangeNotifier {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final databaseRef = FirebaseDatabase.instance.ref();
  late User user;

  void insertUser(String name, String lastname, String email, String password) {
    if (name == null || lastname == null)
      String? key = databaseRef.child("users").push().key;
    databaseRef.child("users").set({
      'id': key,
      'name': name,
      'lastname': lastname,
      'email': email,
      'password': password
    });
  }
}
