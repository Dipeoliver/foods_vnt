import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String texto;
  final bool obscureType;
  final TextInputType textInputType;

  const InputField(this.texto, this.obscureType, this.textInputType,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      obscureText: obscureType,
      decoration: InputDecoration(
        labelText: texto,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 20,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      style: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
    );
  }
}
