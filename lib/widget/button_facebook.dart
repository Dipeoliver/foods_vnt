import 'package:flutter/material.dart';

class ContainerButtonFacebook extends StatelessWidget {
  const ContainerButtonFacebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Color(0xFF395697),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: SizedBox.expand(
        child: TextButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Login com Facebook',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                  child: SizedBox(
                    child: Image.asset("assets/images/face.png"),
                    height: 28,
                    width: 28,
                  ),
                ),
              ],
            ),
            onPressed: () {}),
      ),
    );
  }
}
