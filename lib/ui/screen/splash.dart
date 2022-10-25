import 'dart:async';
import 'package:dilwallet/shared/style/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SplashStart();
  }

  // ignore: non_constant_identifier_names
  SplashStart() async {
    var durasiSplash = const Duration(seconds: 3);

    return Timer(durasiSplash, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const Splash();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorDilWallet.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/dark_dillwallet.png",
                width: 200.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
