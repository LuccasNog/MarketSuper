import 'package:app/screens/initial.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final databaseRef = FirebaseDatabase.instance.ref();
  await Firebase.initializeApp();

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
        //LoginPage
        //'initial': (_) => const InitialPage(),
      },
    );
  }
}
