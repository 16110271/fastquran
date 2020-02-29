import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          child: Column(children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffFF7216),
              child: Image.asset(
                'image/page_1.png',
                height: 100,
                width: 90,
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
