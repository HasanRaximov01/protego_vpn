import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/config/constants/app_colors.dart';
import 'package:protego_vpn/config/constants/app_text_styles.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      size: 28,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Language",
                    style:
                        AppTextStyles.body35w5.copyWith(color: AppColors.black),
                  ),
                ],
              ),
              // PopupMenuButton<Locale>(

              //   onSelected:(value) async{

              //   },
              //   iconSize: 40,
              //   itemBuilder: (context) {
              //     return  [

              //       const PopupMenuItem(
              //         value: Locale("ru", "RU"),
              //         child: Text("🇷🇺ru"),
              //       ),
              //       const PopupMenuItem(
              //         value: Locale("en", "US"),
              //         child: Text("🇺🇸eng"),
              //       ),
              //     ];
              //   },
              //   child: const Icon(
              //     Icons.language,
              //     color: AppColors.uploadconshadow,
              //     size: 42,
              //   ),
              // ),
              GestureDetector(
                child: Text(
                  "RU",
                  style: AppTextStyles.body22w5.copyWith(color: AppColors.blue),
                ),
                onTap: () {
                  if (context.locale ==const Locale("en", "US")) {
                    context.setLocale(const Locale("ru", "RU"));
                  }
                },
              ),
              GestureDetector(
                child: Text(
                  "ENG",
                  style: AppTextStyles.body22w5
                      .copyWith(color: AppColors.ontapBorder),
                ),
                onTap: () {
                    if (context.locale ==const Locale("ru", "RU")) {
                    context.setLocale(const Locale("en", "US"));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
