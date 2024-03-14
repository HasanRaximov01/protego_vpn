import 'package:go_router/go_router.dart';
import 'package:protego_vpn/presentation/pages/home/view/home_page.dart';
import 'package:protego_vpn/presentation/pages/instruction/view/instruction_page.dart';
import 'package:protego_vpn/presentation/pages/settings/components/about.dart';
import 'package:protego_vpn/presentation/pages/settings/components/language.dart';
import 'package:protego_vpn/presentation/pages/settings/components/privacy_policy.dart';
import 'package:protego_vpn/presentation/pages/settings/components/term_of_service.dart';
import 'package:protego_vpn/presentation/pages/settings/view/settings_page.dart';
import 'package:protego_vpn/presentation/pages/start/view/start_page.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
  GoRoute(
    name: '/',
    path: '/',
    builder: (context, state) => const StartPage(),
    ),
    GoRoute(
    name: '/home',
    path: '/home',
    builder: (context, state) =>const HomePage(),
    ),
     GoRoute(
    name: '/instruction',
    path: '/instruction',
    builder: (context, state) => const InstructionPage(),
    ),
     GoRoute(
    name: '/settings',
    path: '/settings',
    builder: (context, state) => const SettingPage(),
    ),
     GoRoute(
    name: '/language',
    path: '/language',
    builder: (context, state) => const LanguagePage(),
    ),
      GoRoute(
    name: '/termof',
    path: '/termof',
    builder: (context, state) => const TermofServicePage(),
    ),
     GoRoute(
    name: '/about',
    path: '/about',
    builder: (context, state) => const AboutPage(),
    ),
      GoRoute(
    name: '/privacypolicy',
    path: '/privacypolicy',
    builder: (context, state) => const PrivacyPolicyPage(),
    ),
]);