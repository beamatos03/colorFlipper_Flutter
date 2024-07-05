import 'package:flutter/material.dart';
import 'dart:math';



void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App muda cor de fundo',
      home: mudarCorTela(),
    );
  }

}

class mudarCorTela extends StatefulWidget{
  @override
  mudarStatusCorTela createState() => mudarStatusCorTela();
}


class mudarStatusCorTela extends State<mudarCorTela>{
  Color corFundo = Colors.white;
  

  void mudarCor(){
    setState(() {
      corFundo = Color((Random().nextDouble()*0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: corFundo,
      appBar: AppBar(
        title: Text('Mudar cor da tela')
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: mudarCor,
          child: Text('Mudar Cor'),),)
    );
  }

}