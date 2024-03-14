import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:protego_vpn/config/constants/assets.dart';

class Instruction2 extends StatefulWidget {
  const Instruction2({super.key});

  @override
  State<Instruction2> createState() => _Instruction2State();
}

class _Instruction2State extends State<Instruction2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:[ Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(context.locale.toString()== "en_US"?Assets.ins1ru:Assets.ins2ru),)
        ),
      ),]
    );
  }
}