import 'package:flutter/material.dart';

import '../widget/button_main.dart';
import '../widget/inputField.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 31, 43),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Color.fromARGB(255, 27, 31, 43),
        child: ListView(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset("assets/images/recovery.png"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Esqueceu sua senha?',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Por favor, informe o E-mail associado a sua conta que enviaremos um link com instruções para restauração de sua senha.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
            ),
            InputField('E-mail', false, TextInputType.emailAddress),
            SizedBox(
              height: 50,
            ),
            buttonMain('Enviar')
          ],
        ),
      ),
    );
  }
}
