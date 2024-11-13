import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoo_app/home/home_screen.dart';
import 'package:todoo_app/provider/settings_provider.dart';
import 'package:todoo_app/splash/splash_screen.dart';
import 'package:todoo_app/styles/my_theme_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider()..getTheme(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SplashScreen.routeName: (context) => const SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.currentTheme,
    );
  }
}
