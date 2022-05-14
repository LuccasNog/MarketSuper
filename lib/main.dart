import 'package:app/screens/initial.dart';
import 'package:app/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mercado',
      theme: ThemeData.dark(),
      initialRoute: 'initial',
      routes: {
        'initial': (_) => const InitialPage(),
        //'initial': (_) => const InitialPage(),
      },
    );
  }
}
