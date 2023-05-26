import 'package:flutter/material.dart';

class ButtonSecundary extends StatelessWidget {
  final String texto;
  final Alignment alignment;
  final Widget navigator;

  const ButtonSecundary(this.texto, this.alignment, this.navigator,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: alignment,
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        child: Text(
          texto,
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigator),
          );
        },
      ),
    );
  }
}
