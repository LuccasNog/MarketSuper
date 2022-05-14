import 'package:flutter/material.dart';

class ModelsUser {
  final String name;
  final String email;
  final String password;
  final String andress;
  final String district;
  final String city;
  final String state;
  final String cep;

  ModelsUser({
    required this.name,
    required this.email,
    required this.password,
    required this.andress,
    required this.district,
    required this.city,
    required this.state,
    required this.cep,
  });
}
