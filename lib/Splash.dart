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
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainMenu(),
        ),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Center(
                child: Image.asset('image/logo.png',
                    height: 220)),
            Padding(
              padding: const EdgeInsets.only(bottom : 50),
              child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Center(
                        child: Text('Version 1.0 | 2020 © FastQuran',
                        style: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
            )
          ],
        ),
                
        );
  }
}
