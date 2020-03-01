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
        title: Text('Game 1'),
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
                  width: 100,
                )),
          ]),
        ),
        Container(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  )
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  )
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  )
                ],
              ),
            ), Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffFF7216),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          border: Border.all(
                            width: 4,
                            color: const Color(0xFFFFFFFF),
                          )),
                    ),
                  )
                ],
              ),
            ) //bawahnya
          ],
        ))
      ]),
    );
  }
}
