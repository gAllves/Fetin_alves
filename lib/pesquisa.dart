// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Pesquisa extends StatefulWidget {
  @override     
  State<StatefulWidget> createState() {
    return PesquisaState();
  }
}

class PesquisaState extends State<Pesquisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                print("Teste botão!");
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 8),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'images/ep_back.png',
                  ),
                ),
              ),
            ),
            Center(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
                    filled: true,
                    fillColor: Color(0xFFF0EC57),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 1),
                    ),
                    hintText: 'Pesquise uma instituição...',
                    hintStyle: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 18,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 27,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}