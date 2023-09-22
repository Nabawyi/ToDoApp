import 'package:flutter/material.dart';

class Mybtn extends StatelessWidget {
   Mybtn({super.key, required this.text,required this.onpressed});

  final String text;
  VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: onpressed,
      child: Text(text),
    );
  }
}
