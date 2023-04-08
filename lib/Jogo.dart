import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagem = AssetImage("images/padrao.png");
  int _numeroAleatorio = 0;
  int _contador = 0;
  var _mensagem = "Escolha uma opção abaixo";

  void _mudaImagem(String escolhaUsuario) {
    var opcoes = ["pedra", "papel", "tesoura"];
    _numeroAleatorio = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[_numeroAleatorio];

    switch (escolhaApp) {
      case "pedra":
        setState(() {
          this._imagem = AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagem = AssetImage("images/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagem = AssetImage("images/tesoura.png");
        });
        break;
    }

    if ((escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
        (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
        (escolhaUsuario == "papel" && escolhaApp == "pedra")) {
      this._mensagem = "Você Ganhou!!";
      this._contador++;
    } else if ((escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
        (escolhaApp == "tesoura" && escolhaUsuario == "papel") ||
        (escolhaApp == "papel" && escolhaUsuario == "pedra")) {
      this._mensagem = "Você Perdeu!!";
      if(this._contador > 0){
        this._contador--;
      }

    } else {

      this._mensagem = "Empatamos!!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pedra, Papel e Tesoura"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do  App:",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image(
            image: _imagem,
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => _mudaImagem("pedra"),
                child: Image.asset(
                  "images/pedra.png",
                  height: 100,
                  width: 100,
                ),
              ),
              GestureDetector(
                onTap: () => _mudaImagem("papel"),
                child: Image.asset(
                  "images/papel.png",
                  height: 100,
                  width: 100,
                ),
              ),
              GestureDetector(
                onTap: () => _mudaImagem("tesoura"),
                child: Image.asset(
                  "images/tesoura.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Quantidade de ponto contra APP: ${this._contador}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
