import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:cep/cep.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:informaletal/main.dart';

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OnboardingState();
  }
}

class _OnboardingState extends State<Onboarding> {
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
              padding: EdgeInsetsDirectional.only(end: 170.0),
              child: Text(
                'Olá, Bem Vindo(a)!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
              child: Image.asset(
                'assets/images/Doggin01.png',
                semanticLabel: 'Doggin',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  'Que bom te ver por aqui! Sei que estamos passando por um momento difícil, e por isso, temos como objetivo ajudar trabalhadores domésticos de nossa região a encontrar pessoas que precisem de seus serviços. Tudo na base da confiança.'),
            ),
            Padding(
              padding: EdgeInsets.all(1),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaRota()),
                  );
                },
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
