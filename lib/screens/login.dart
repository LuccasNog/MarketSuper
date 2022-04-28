import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: page(),
    );
  }
}

Widget page() {
  return Padding(
    padding: const EdgeInsets.all(19.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 120,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C4E03AQHDro1f0yXZHg/profile-displayphoto-shrink_800_800/0/1632929876725?e=1656547200&v=beta&t=5K6PZ0SmaMhspvIXFibiVvPUI4xSiZLoSOsvG3XQQNU'),
                fit: BoxFit.fill),
          ),
        ),
        const SizedBox(
          height: 30,
          width: 90,
        ),
        const Text('Acesse sua conta'),
        const SizedBox(
          height: 30,
          width: 90,
        ),
        TextFormField(
          decoration: InputDecoration(
              fillColor: Colors.red,
              iconColor: Colors.red,
              hoverColor: Colors.red,
              suffixIconColor: Colors.red,
              labelText: 'Digite seu e-mail',
              border: const OutlineInputBorder(),
              suffixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.login))),
          obscureText: false,
        ),
        SizedBox(
          height: 30,
          width: 90,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: 'Informe sua senha',
              border: const OutlineInputBorder(),
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.security))),
          obscureText: true,
        ),
      ],
    ),
  );
}

Widget formFielPassword() {
  return TextFormField(
    decoration: InputDecoration(
        labelText: 'Informe sua senha',
        border: const OutlineInputBorder(),
        suffixIcon:
            IconButton(onPressed: () {}, icon: const Icon(Icons.security))),
    obscureText: true,
  );
}

Widget formFielName() {
  return TextFormField(
    decoration: InputDecoration(
        labelText: 'Digite seu e-mail',
        border: const OutlineInputBorder(),
        suffixIcon:
            IconButton(onPressed: () {}, icon: const Icon(Icons.login))),
    obscureText: false,
  );
}
