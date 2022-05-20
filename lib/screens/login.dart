import 'package:app/screens/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //final TextEditingController email = TextEditingController();
  //final TextEditingController password = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
              width: 90,
            ),
            Image.asset(
              'images/icons_avatar.png',
              width: 100,
              height: 120,
            ),
            const Text(
              'Acesse sua conta',
            ),
            const SizedBox(
              height: 30,
              width: 90,
            ),
            TextFormField(
              controller: email,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    borderRadius: BorderRadius.circular(29.0),
                  ),
                  hintText: 'name@example.com',
                  prefixIconColor: Colors.red),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            SizedBox(
              height: 30,
              width: 90,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.red, width: 1.0),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                iconColor: Colors.red,
                labelText: 'Informe sua senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 30,
              width: 90,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterPage(),
                  ),
                );
              },
              child: const Text(
                'Entrar',
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
Widget page() {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  return Padding(
    padding: const EdgeInsets.all(19.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 30,
          width: 90,
        ),
        Image.asset(
          'images/icons_avatar.png',
          width: 100,
          height: 120,
        ),
        const Text(
          'Acesse sua conta',
        ),
        const SizedBox(
          height: 30,
          width: 90,
        ),
        TextFormField(
          controller: email,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red, width: 2.0),
                borderRadius: BorderRadius.circular(29.0),
              ),
              hintText: 'name@example.com',
              prefixIconColor: Colors.red),
          keyboardType: TextInputType.emailAddress,
          obscureText: false,
        ),
        SizedBox(
          height: 30,
          width: 90,
        ),
        TextFormField(
          controller: password,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.red, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            iconColor: Colors.red,
            labelText: 'Informe sua senha',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          obscureText: true,
        ),
        SizedBox(
          height: 30,
          width: 90,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(),
              ),
            );
          },
          child: const Text('Entrar'),
        ),
      ],
    ),
  );
}
*/

Widget CircleUser() {
  return CircleAvatar(
    backgroundImage: NetworkImage(''),
  );
}

OutlineInputBorder myinputborder() {
  //return type is OutlineInputBorder
  return OutlineInputBorder(
      //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color: Colors.redAccent,
        width: 3,
      ));
}

Widget formFielPassword() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Informe sua senha',
      border: const OutlineInputBorder(),
      suffixIcon:
          IconButton(onPressed: () {}, icon: const Icon(Icons.security)),
    ),
    obscureText: true,
  );
}

Widget formFielName() {
  return TextFormField(
    decoration: InputDecoration(
      labelText: 'Informe seu e-mail',
      hintText: 'name@example.com',
      border: const OutlineInputBorder(),
      suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.login)),
    ),
    keyboardType: TextInputType.emailAddress,
    obscureText: false,
  );
}
