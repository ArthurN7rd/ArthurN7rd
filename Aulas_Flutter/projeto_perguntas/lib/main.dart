import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'texto':'Qual é a sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'pontuacao': 7},
          {'texto': 'Vermelho', 'pontuacao':5},
          {'texto': 'Verde', 'pontuacao':8},
          {'texto': 'Laranja', 'pontuacao':9},
         ],
      },
      {
        'texto':'Qual é o seu animal favorito?',  
        'respostas': [
          {'texto': 'Coelho', 'pontuacao': 3}, 
          {'texto': 'Cobra', 'pontuacao': 7}, 
          {'texto': 'Elefante', 'pontuacao': 9}, 
          {'texto': 'Leão', 'pontuacao': 7},
         ],
      },
      {
        'texto':'Qual é o seu instrutor favorito?',  
        'respostas': [
          {'texto': 'Maria', 'pontuacao': 12}, 
          {'texto': 'João', 'pontuacao': 7}, 
          {'texto': 'Leo', 'pontuacao': 6}, 
          {'texto': 'Pedro', 'pontuacao': 3},
          ],
      }
    ];

  void _responder() {
    if (temPerguntaSelecionada){
      setState(() {
      _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body:temPerguntaSelecionada 
            ? Questionario(
                perguntas: _perguntas, 
                perguntaSelecionada: _perguntaSelecionada, 
                quandoResponder: _responder,
              ) : Resultado(),
    ),
  );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}


