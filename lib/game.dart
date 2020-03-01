import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF7216),
        title: Text('Game '),
      ),
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
                )),
            Container(
                child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(
                          width: 1, color: const Color(0xFFFFFFFF))),
                )
              ],
            ))
          ]),
        ),
      ]),
    );
  }
}
