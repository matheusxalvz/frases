import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import "dart:math";

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));

}
  class Home extends StatefulWidget {
    const Home({Key? key}) : super(key: key);
  
    @override
    _HomeState createState() => _HomeState();
  }
  
  class _HomeState extends State<Home> {
  var _frases = [
    "Se não houver vento, reme.",
    "Não limite seus desafios. Desafie seus limites.",
    "Minha missão na vida não é apenas sobreviver, mas prosperar.",
    "O que você procura está procurando você.",
    "Uma meta é um sonho com um prazo.",
    "Tente mover o mundo - o primeiro passo será mover a si mesmo.",
    "Quem quer vencer um obstáculo deve armar-se da força do leão e da prudência da serpente.",
    "Uma longa viagem começa com um único passo.",
    "Existe apenas um canto do universo que você pode ter certeza de aperfeiçoar, que é você mesmo.",
    "Você precisa fazer aquilo que pensa que não é capaz de fazer."
  ];
  var fraseGerada = "Clique abaixo para gerar uma frase!";

  void gerarFrase(){
    var numeroRandomico = Random().nextInt(_frases.length );
    setState(() {
      fraseGerada = _frases[numeroRandomico];
    });

  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          width: double.infinity,
          padding : EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
            ElevatedButton(onPressed: gerarFrase, child: Text("Nova frase", style: TextStyle(
              color: Colors.white
            ),),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),

                ))
            ],
          ),
        ),
      );
    }
  }
  