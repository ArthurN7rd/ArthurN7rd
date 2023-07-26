import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;

  const Respostas(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.red,
      ),
      child: Text(texto),
      onPressed: () {},
    );
  }
}