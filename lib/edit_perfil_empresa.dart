// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:fetin/MyTextFormField.dart';
import 'package:fetin/MyTextFormFieldSenha.dart';

class EditPerfilEmpresa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EditPerfilEmpresaState();
  }
}

class EditPerfilEmpresaState extends State<EditPerfilEmpresa> {
  final _formKey = GlobalKey<FormState>();
  final namecontroler = TextEditingController();
  final emailcontroler = TextEditingController();
  final cepcontroler = TextEditingController();
  final estadocontroler = TextEditingController();
  final cidadecontroler = TextEditingController();
  final numcontroler = TextEditingController();
  final ruacontroler = TextEditingController();
  final bairrocontroler = TextEditingController();
  final passwordcontroler = TextEditingController();
  final passwordconfirmationcontroler = TextEditingController();
  String name = '';
  String email = '';
  String cnpj = '';
  String cep = '';
  String estado = '';
  String cidade = '';
  String nume = '';
  String rua = '';
  String bairro = '';
  String password = '';
  String passwordconfirmation = '';

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/header.png',
                  width: double.infinity,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 14),
                        child: GestureDetector(
                            onTap: () {
                              print("Teste botão!");
                            },
                            child: Image.asset('assets/images/setinha.png')),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Partilhe+',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Raleway',
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 19),
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                      color: Color(0xFFF0EC57),
                                      width: 5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      )
                                    ]),
                                child: Stack(
                                  children: [
                                    Image.asset(
                                        'assets/images/perfil_hospital.png'),
                                    Positioned(
                                        bottom: 0,
                                        right: 20,
                                        child: GestureDetector(
                                          onTap: () {
                                            print("Teste botão!");
                                          },
                                          child: Image.asset(
                                              'assets/images/mais.png'),
                                        ))
                                  ],
                                ))),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 25),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(3, 15, 0, 0),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                        color: Color(0xFFF0EC57), width: 1),
                                  ),
                                ),

                                //TEXTO CNPJ
                                child: Text(
                                  'CNPJ: 11.222.333/0001-00',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Raleway',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO NOME COMPLETO
                      MyTextFormField(
                        controller: namecontroler,
                        hintText: 'Nome da instituição',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, informe seu nome completo';
                          }
                          return null;
                        },
                        onSaved: (value) => name = value,
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO EMAIL
                      MyTextFormField(
                        controller: emailcontroler,
                        hintText: 'Email',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, informe seu email corretamente';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO CEP
                      MyTextFormField(
                        controller: cepcontroler,
                        hintText: 'Estado',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, informe seu estado corretamente';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            width: 190,
                            child: MyTextFormField(
                              controller: cepcontroler,
                              hintText: 'CEP',
                              obscureText: false,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Porfavor, informe o cep da instituição corretamente';
                                }
                                return null;
                              },
                              onSaved: (value) => cep = value,
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox(
                            width: 190,
                            child: MyTextFormField(
                              controller: numcontroler,
                              hintText: 'Número',
                              obscureText: false,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Por favor, informe o número corretamente';
                                }
                                return null;
                              },
                              onSaved: (value) => nume = value,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO CIDADE
                      MyTextFormField(
                        controller: cidadecontroler,
                        hintText: 'Cidade',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, informe sua cidade corretamente';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO RUA
                      MyTextFormField(
                        controller: ruacontroler,
                        hintText: 'Rua',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, informe sua rua corretamente';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO BAIRRO
                      MyTextFormField(
                        controller: bairrocontroler,
                        hintText: 'Bairro',
                        obscureText: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, informe seu bairro corretamente';
                          }
                          return null;
                        },
                        onSaved: (value) => email = value,
                      ),
                      SizedBox(height: 10),

                      //EDIÇÃO SENHA
                      MyTextFormFieldSenha(
                        controller: passwordcontroler,
                        obscureText: !_passwordVisible,
                        hintText: 'Senha',
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, digite uma senha válida';
                          }
                          return null;
                        },
                        onSaved: (value) => password = value,
                      ),
                      SizedBox(height: 10),

                      //CONFIRMAR SENHA
                      MyTextFormFieldSenha(
                        controller: passwordconfirmationcontroler,
                        obscureText: !_passwordVisible,
                        hintText: 'Confirmar Senha',
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Por favor, digite uma senha válida';
                          }
                          return null;
                        },
                        onSaved: (value) => password = value,
                      ),
                      SizedBox(height: 30),

                      Container(
                        padding: EdgeInsets.only(bottom: 30),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1C1C1C),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(354, 27),
                            backgroundColor: const Color(0xFFF0EC57),
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          onPressed: () {
                            print("Teste botão!");
                          },
                          child: Text(
                            "Salvar Edição",
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Raleway',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Botão Salvar edição
          ],
        ),
      ),
    );
  }
}
