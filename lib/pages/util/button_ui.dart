import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonUi extends StatelessWidget {
  final String text;
  VoidCallback? onPressed;

  ButtonUi({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed, 
      child: Text(text),
      color: Colors.blue[200],
    );
  }
}