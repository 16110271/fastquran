import 'package:flutter/material.dart';
import 'HurufModel.dart';

class Game extends StatefulWidget {
  final HurufModel huruf;
  Game({Key key, this.huruf}) : super(key: key);

  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF57c00),
        title: Text('Game 1'),
      ),
      body: Stack(children: <Widget>[
        Container(
          child: Column(children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffF57c00),
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
              padding: const EdgeInsets.only(top: 50, left: 10),
              child: Row(
                //baris 1
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                //baris 2
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                //baris 3
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Row(
                //baris 4
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3),
                    child: Container(
                      //kotak-kotak
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
                          color: Color(0xffF57c00),
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
            ), //bawahnya
            Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    //kotak-kotak
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 6.0,
                          offset: Offset(2, 2),
                        )
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Text('غ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontFamily: 'DUBAI')),
                  ),
                ],
              ),
            )
          ],
        ))
      ]),
    );
  }
}
