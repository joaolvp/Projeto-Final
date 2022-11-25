import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Conta'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/bg_ifro.png"),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 0, 100, 20),
                child: Container(
                  width: 200,
                  child: Image.asset("images/logoifro.png"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Text('Preencha as informações a seguir'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
            child: TextFormField(
              controller: null,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green)),
                  hintText: 'Nome Completo'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
            child: TextFormField(
              controller: null,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green)),
                  hintText: 'Matrícula'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
            child: TextFormField(
              controller: null,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green)),
                  hintText: 'E-mail'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 5),
            child: TextFormField(
              controller: null,
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.green)),
                  hintText: 'Senha'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.app_registration),
              label: const Text('Registrar'),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
