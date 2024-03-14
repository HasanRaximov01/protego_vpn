
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';
import 'package:protego_vpn/presentation/pages/home/components/app_bar.dart';
import 'package:protego_vpn/presentation/pages/home/components/ip_adress.dart';
import 'package:protego_vpn/presentation/pages/home/components/power_button.dart';
import 'package:protego_vpn/presentation/pages/home/components/text_con_discon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.startPagebackgroundcolor,
      body: Container(
      decoration: BoxDecoration(gradient: AppTextStyles.linearGradient),
        child:   SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            
              HomeAppBar(),
              
              Spacer(),
            
             
    TextDisConnOrConn(),
               PowerButton(),
              Spacer(),
              
         IpAdress()
            ],
          ),
        ),
      ),
    );
  }
}
