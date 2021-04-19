import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        SizedBox(
          width: 15,
        ),
        Text(
          "Start ",
          style: TextStyle(fontSize: 32, letterSpacing: 1),
        ),
        Text(
          "Shopping",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 1),
        ),
      ],
    );
  }
}
