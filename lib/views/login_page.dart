import 'package:flutter/material.dart';
import 'package:foods_vnt/views/home.dart';
import 'package:foods_vnt/views/resetPasswordPage.dart';
import 'package:foods_vnt/views/signup.dart';
import '../widget/button_facebook.dart';
import '../widget/button_secundary.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              width: 128,
              height: 128,
              child: Image.asset("assets/images/logo.png"),
            ),
            SizedBox(
              height: 40,
            ),
            //InputField('E-mail', false, TextInputType.emailAddress),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _emailcontroller,
              decoration: InputDecoration(
                labelText: 'E-mail',
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
            ),
            SizedBox(
              height: 20,
            ),
            //InputField('Password', true, TextInputType.text),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _passwordcontroller,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
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
            ),
            ButtonSecundary(
                'Recuperar Senha', Alignment.centerRight, ResetPasswordPage()),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFEC528F),
                    Color(0xFF6D2493),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      String email = _emailcontroller.text;
                      String pass = _passwordcontroller.text;
                      if (email == 'test@test.com' && pass == '1234') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      } else {}
                    }),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ContainerButtonFacebook(),
            SizedBox(
              height: 20,
            ),
            ButtonSecundary('Cadastre-se', Alignment.center, SignupPage()),
          ],
        ),
      ),
    );
  }
}
