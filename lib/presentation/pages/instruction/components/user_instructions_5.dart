import 'package:flutter/material.dart';

class Instruction5 extends StatelessWidget {
  const Instruction5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/ins4.png"),fit: BoxFit.contain)
      ),);
  }
}