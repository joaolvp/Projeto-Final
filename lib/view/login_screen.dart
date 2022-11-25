import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_final/view/forgot_screen.dart';
import 'package:projeto_final/view/register_screen.dart';
import 'package:styled_text/styled_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
            GestureDetector(
              onTap: () {
                Get.to(() => ForgotScreen());
              },
              child: Container(
                width: 350,
                height: 25,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(225, 1, 0, 0),
                  child: Text('Esqueceu a Senha?'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.login),
                label: Text('Logar'),
                style: TextButton.styleFrom(backgroundColor: Colors.green),
              ),
            ),
            Container(
              width: 350,
              height: 50,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => RegisterScreen());
                },
                child: Text(
                  'Não tem conta??? Registre-se!',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: 350,
              height: 50,
              child: StyledText(
                text:
                    '-----------------------------------------<bold> OU </bold>----------------------------------------',
                tags: {
                  'bold': StyledTextTag(
                      style: TextStyle(fontWeight: FontWeight.bold)),
                },
              ),
            ),
            Container(
              width: 350,
              height: 40,
              child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  label: Text('Autenticar pelo Facebook'),
                  style: TextButton.styleFrom(backgroundColor: Colors.blue)),
            )
          ],
        ),
      ),
    );
  }
}
