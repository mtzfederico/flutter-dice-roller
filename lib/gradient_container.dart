import 'package:dice_roller/centered_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {

  const GradientContainer({super.key});

  final Alignment startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 63, 8, 165),
                Color.fromARGB(255, 12, 1, 39),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: CenteredText('Hello World'),
        );
  }
}
