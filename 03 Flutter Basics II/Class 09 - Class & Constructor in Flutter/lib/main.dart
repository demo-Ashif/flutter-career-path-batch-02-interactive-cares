import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(const DiceRollerApp());
}

class DiceRollerApp extends StatelessWidget {
  const DiceRollerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          color1: Color.fromARGB(255, 26, 2, 80),
          color2: Color.fromARGB(255, 45, 7, 98),
        ),
      ),
    );
  }
}
