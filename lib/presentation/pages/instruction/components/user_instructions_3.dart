import 'package:flutter/material.dart';
import 'package:protego_vpn/config/constants/assets.dart';

class Instruction3 extends StatelessWidget {
  const Instruction3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.ins3ru),fit: BoxFit.contain)
      ));
  }
}