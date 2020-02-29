import 'package:Fast_Quran/mainmenu.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MaterialApp(home: MainMenu()));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainMenu(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('image/logo.png',
      height:90))//FlutterLogo(size: 200)),
    );
  }
}
