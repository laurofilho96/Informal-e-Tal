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
  final _formKey = GlobalKey<FormState>();
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
            // Formulário de validação do CEP
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, digite o CEP de sua localização.';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('Processando Dados.')));
                              }
                            },
                            child: Text('Verificar CEP'),
                          ),
                        )
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
