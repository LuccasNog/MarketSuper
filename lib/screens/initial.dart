import 'package:lottie/lottie.dart';
import 'package:app/screens/login.dart';
import 'package:app/screens/register.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
                'https://assets4.lottiefiles.com/packages/lf20_6sxyjyjj.json'),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(),
                  ),
                );
              },
              child: const Text(
                'Entrar no aplicativo',
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          children: [
            Center(
              child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_6sxyjyjj.json'),
            ),
            ElevatedButton(
              child: const Text('Entrar'),
              onPressed: () {
                // Navigate to second route when tapped.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
          ],
        )));
        */



/*

Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /*
              Image.asset(
                'images/icon_carrin.png',
                width: 100,
                height: 120,
              ),
              */
              
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text('Boas compra'))
            ],
          ),
        ),
      ),
   */   

/*
Widget meuLayoutWidget() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Center(
      child: Column(
        children: [
          Image.asset(
            'images/icon_carrin.png',
            width: 100,
            height: 120,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Boas compra'))
        ],
      ),
    ),
  );
}
*/