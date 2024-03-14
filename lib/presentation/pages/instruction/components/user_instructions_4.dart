import 'package:flutter/material.dart';

class Instruction4 extends StatelessWidget {
  const Instruction4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/ins3.png"),fit: BoxFit.contain)
      ),);
  }
}