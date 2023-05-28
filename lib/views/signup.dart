import 'package:flutter/material.dart';

import '../widget/button_main.dart';
import '../widget/inputField.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 10,
          left: 40,
          right: 40,
        ),
        color: Color.fromARGB(255, 27, 31, 43),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              height: 200,
              alignment: Alignment(0.0, 1.15),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage('assets/images/user.png'),
                    fit: BoxFit.fitHeight),
              ),
              child: Container(
                height: 36,
                width: 36,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1.0],
                    colors: [
                      Color(0xFFEC528F),
                      Color(0xFF6D2493),
                    ],
                  ),
                  border: Border.all(
                    width: 4.0,
                    color: const Color(0xFFFFFFFF),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(70),
                  ),
                ),
                child: SizedBox.expand(
                  child: ElevatedButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InputField("Nome", false, TextInputType.text),
            SizedBox(
              height: 20,
            ),
            InputField("E-mail", false, TextInputType.emailAddress),
            SizedBox(
              height: 20,
            ),
            InputField('Password', true, TextInputType.text),
            SizedBox(
              height: 40,
            ),
            buttonMain('Cadastrar'),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              child: TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
                child: Text(
                  'Cancelar',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context, false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
