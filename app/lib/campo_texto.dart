// ignore_for_file: unused_local_variable, prefer_final_fields, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({Key? key}) : super(key: key);

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  // Cria uma Instancia para o Controller do input
  TextEditingController _textAlcoolController = TextEditingController();
  TextEditingController _textGasolinaController = TextEditingController();

  var _resultado = '';

  void _calcular() {
    // faz o parse do valor digitado para double, caso o usuário digite com
    // viurgula não será feito o parse
    // se for convertido volta o valor, do contrário volta Null
    double? precoAlcool = double.tryParse(_textAlcoolController.text);
    double? precoGasolina = double.tryParse(_textGasolinaController.text);
    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _resultado = 'Você deve usar o (.) e não a (,)';
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _resultado = 'Você deveria abastercer com Gasolina';
        });
      } else {
        setState(() {
          _resultado = 'Você deveria abastercer com Alcool';
        });
        // _limparCampos();
      }
    }
  }
  /*
  void _limparCampos() {
    _textAlcoolController.text = '';
    _textGasolinaController.text = '';
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ácool ou Gasolina'),
      ),
      // O SingleChildScrollView, Ajusta o template com Scroll
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Image.asset(
                'assets/logo.png',
              ),
            ),
            const Padding(
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
              decoration: const InputDecoration(
                labelText: 'Preço Alccol, ex 3.89',
              ),
              // enabled: true,
              // maxLength: 5,
              // maxLengthEnforcement: true,
              style: const TextStyle(
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
              controller: _textAlcoolController,
            ),
            TextField(
              // Escolhe o tipo de Teclado como númerico
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Preço Gasolina, ex 6.79',
              ),
              // enabled: true,
              // maxLength: 5,
              // maxLengthEnforcement: true,
              style: const TextStyle(
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
              controller: _textGasolinaController,
            ),
            // Cria um botão
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ElevatedButton(
                // Adiciona estilos ao botão
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // background
                  onPrimary: Colors.white, // foreground
                ),
                // Evento de click, cria uma função vazia e não faz nada
                onPressed: _calcular,
                // cria o texto filho do botão
                child: const Text(
                  'Calcular!',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                _resultado,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
