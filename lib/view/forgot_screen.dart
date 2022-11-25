import'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperar a Senha'),
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
            padding: const EdgeInsets.all(8.0),
            child: Text('Digite o e-mail que deseja recupera a senha:'),
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
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.send),
              label: Text('Recuperar senha por E-mail'),
              style: TextButton.styleFrom(backgroundColor: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}

