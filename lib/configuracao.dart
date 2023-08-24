// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fetin/botao.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Config extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConfigState();
  }
}

class ConfigState extends State<Config> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          Stack(children: [
            Image.asset(
              'assets/images/header.png',
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              child: GestureDetector(
                  onTap: () {print("Teste botão!");},
                  child: Image.asset('assets/images/setinha.png')),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 65, horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Partilhe+',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Raleway',
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 102, horizontal: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Configurações',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontFamily: 'Raleway',
                        fontSize: 36,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ]),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 27),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style: button,
                    onPressed: () {},
                    child: Text("Editar Informações",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 24,
                            fontWeight: FontWeight.w600))),
                SizedBox(height: 27),
                ElevatedButton(
                    style: button,
                    onPressed: () {},
                    child: Text("Apagar Conta",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 24,
                            fontWeight: FontWeight.w600))),
                SizedBox(height: 27),
                ElevatedButton(
                    style: button,
                    onPressed: () {},
                    child: Text("Deslogar",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontSize: 24,
                            fontWeight: FontWeight.w600))),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
