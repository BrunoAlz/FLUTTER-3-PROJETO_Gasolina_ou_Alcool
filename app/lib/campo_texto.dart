// ignore_for_file: avoid_print, prefer_const_constructors, prefer_final_fields, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  // Cria uma Instancia para o Controller do input
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ácool ou Gasolina'),
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Image.asset(
              'assets/logo.png',
              height: 150,
            ),
            // Cria um elemento Input
            TextField(
              // Escolhe o tipo de Teclado como númerico
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço Alccol, ex 3.89',
              ),
              // enabled: true,
              // maxLength: 5,
              // maxLengthEnforcement: true,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              // obscureText: true, // Password

              // Recupera o valor no Change
              /*onChanged: (String valor) {
                  print(valor);
                },*/

              // Recupera o Valor no Submit
              onSubmitted: (String text) {
                // print(text);
              },
              // O Controle tem acesso aos dados digitados pelo usuário
              controller: _textEditingController,
            ),
            TextField(
              // Escolhe o tipo de Teclado como númerico
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Preço Gasolina, ex 6.79',
              ),
              // enabled: true,
              // maxLength: 5,
              // maxLengthEnforcement: true,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
              // obscureText: true, // Password

              // Recupera o valor no Change
              /*onChanged: (String valor) {
                  print(valor);
                },*/

              // Recupera o Valor no Submit
              onSubmitted: (String text) {
                // print(text);
              },
              // O Controle tem acesso aos dados digitados pelo usuário
              controller: _textEditingController,
            ),
            // Cria um botão
            ElevatedButton(
              // Adiciona estilos ao botão
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // background
                onPrimary: Colors.white, // foreground
              ),
              // Evento de click, cria uma função vazia e não faz nada
              onPressed: () {
                // Retorna o valor que foi armazenado pelo controlador - text são
                // os dados do input
                print('Valor digitado: ${_textEditingController.text}');
              },
              // cria o texto filho do botão
              child: const Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
