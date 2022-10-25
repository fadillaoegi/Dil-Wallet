import 'package:dilwallet/routes/routes.dart';
import 'package:dilwallet/ui/screen/home_screen.dart';
import 'package:dilwallet/ui/screen/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Splash(),
      initialRoute: RouteDilWallet.splash,
      routes: {
        RouteDilWallet.splash: (context) => const Splash(),
        // RouteDilWallet.onboarding:(context) => const OnBoarding(),
        RouteDilWallet.home: (context) => const HomeScreen(),
      },
    );
  }
}
