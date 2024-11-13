import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo_app/home/home_screen.dart';
import 'package:todoo_app/provider/settings_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    var provide = Provider.of<SettingsProvider>(context);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        provide.currentTheme == ThemeMode.light
            ? 'assets/images/splash.png'
            : 'assets/images/splash_dark.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
