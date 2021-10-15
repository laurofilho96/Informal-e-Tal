import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:informaletal/main.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectPerfil extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SelectPerfilState();
  }
}

class _SelectPerfilState extends State<SelectPerfil> {
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
              padding: EdgeInsets.all(20),
              child: Text(
                'Aqui no Informal&tal buscamos ser a ponte entre as pessoas que prestam serviços domésticos e aqueles que necessitam desses serviços.\n\nCom base no seu perfil, você tem a opção de se cadastrar como prestador de serviço ou como contratante.',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 100.0),
              child: Text(
                'Prestador de Serviço?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 20, right: 0, bottom: 20),
              child: Image.asset(
                'assets/images/Plantinea.png',
                semanticLabel: 'Plantinea',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaRota()),
                  );
                },
                child: Text('Sou prestador(a) de serviços'),
                style: ElevatedButton.styleFrom(),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(end: 40.0),
              child: Text(
                'Buscando por algum serviço?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
