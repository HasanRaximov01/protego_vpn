import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:protego_vpn/presentation/manager/locator.dart';
import 'package:protego_vpn/presentation/pages/home/manager/home_cubitd.dart';
import 'package:protego_vpn/presentation/routes/routes.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await setupConfiguration();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale("ru", "RU"),
        Locale("en", 'US'),
      ],
      path: 'assets/languages',
      fallbackLocale: Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late HomeCubit _homeCubit;
  @override
  void initState() {
    _homeCubit = getIt.get<HomeCubit>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      splitScreenMode: true,
      minTextAdapt: true,
    
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => _homeCubit,
          )
        ],
        child: MaterialApp.router(
localizationsDelegates: context.localizationDelegates,
supportedLocales: context.supportedLocales,
locale: context.locale,
theme: ThemeData(useMaterial3: true),
debugShowCheckedModeBanner: false,
routerConfig: router,
        ),
      ),
    );
  }
}
