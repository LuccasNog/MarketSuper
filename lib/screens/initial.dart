import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: meuLayoutWidget(),
      ),
    );
  }
}

Widget meuLayoutWidget() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Center(
        child: GestureDetector(
      child: Image.asset(
        'images/shopping-cart.png',
        width: 100,
        height: 120,
      ),
      onTap: () {
        print('Imagem foi clicada');
      },
    )),
  );
}
