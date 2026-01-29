import 'package:flutter/material.dart';

class CenteredText extends StatelessWidget {
  final String text;

  const CenteredText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 38));
  }
}