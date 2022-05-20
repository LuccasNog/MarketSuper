import 'package:flutter/material.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String andress;

  // criando constructor
  const User({
    required this.id,
    // required é para criar um usuário do 0
    required this.name,
    required this.email,
    required this.password,
    required this.andress,
  });
}
