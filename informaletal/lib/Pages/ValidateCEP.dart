import 'dart:convert';

import 'package:cep/cep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ValidateCep extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ValidateCepState();
  }
}

class _ValidateCepState extends State<ValidateCep> {
  String filePath = 'assets/webFiles/onBoarding.html';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsetsDirectional.only(top: 50.0),
              child: Image.asset(
                'assets/images/logoComBorda.png',
                fit: BoxFit.contain,
                semanticLabel: 'Informal&Tal',
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Image.asset(
                'assets/images/Leitura.png',
                semanticLabel: 'leitura',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  'Atualmente nosso app está funcionando apenas na região de Alagoas e para isso precisamos confirmar seu endereço. Digite seu CEP abaixo para poder continuar.'),
            ),
            Padding(
              padding: EdgeInsets.all(1),
              child: ElevatedButton(
                onPressed: null,
                child: Text('Vamos lá'),
                style: ElevatedButton.styleFrom(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
