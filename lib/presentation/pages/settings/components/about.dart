import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SafeArea(
        child: Column(children: [
           Row(
                  children: [
                  GestureDetector(child: const  Icon(Icons.arrow_back_ios_new,size: 28,),onTap:(){ Navigator.pop(context);},),
                  SizedBox(width: 20.w,),
                    Text(
                      "About App",
                      style: AppTextStyles.body35w5.copyWith(color: AppColors.black),
                    ),
                  ],
                ),
          SizedBox(height: 40.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text("""App Name: Protego Vpn
Version: 1.0.0
Overview: Experience secure and unrestricted internet access with VPNSecure. Connect to our network server to browse the web privately, access geo-restricted content, and stay safe on public Wi-Fi.
Key Features:
         . Privacy Protection
         . Access Anywhere
         . Fast and Reliable
         . No Logs
         . User-Friendly""",style: AppTextStyles.body16w5.copyWith(color: AppColors.black),),
          ),
        ]),
      ),
    );
  }
}