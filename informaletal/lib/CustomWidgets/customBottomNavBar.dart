import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

//Parte Imutável do widget
class customBottomNavBar extends StatelessWidget {
  //identificador do widget
  const customBottomNavBar({Key key}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    
    return const MaterialApp(
      //Retorna na tela o widget desenhado na classe passada
      home: NavBarStatefulWidget(),
      );
    }
      
      
}

  //Parte Mutável do widget :)   
  class NavBarStatefulWidget extends StatefulWidget {
    //criando o identificado
    const NavBarStatefulWidget({Key key}) : super(key: key);
  //Criando um "Estado" para o widget.
  @override
  State<StatefulWidget> createState() {
    
    throw UnimplementedError();
  }
}