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
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'Saiba qual a melhor Opção para abastecer o seu Veículo!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
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
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: ElevatedButton(
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
                  'Calcular!',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
