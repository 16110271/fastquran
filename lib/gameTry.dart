import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class GameTry extends StatefulWidget {
  @override
  _GameTryState createState() => _GameTryState();
}

class _GameTryState extends State<GameTry> {
  int _current = 0;
  List imgList = [
    'image/aa.jpg',
    'image/bb.jpg',
    'image/cc.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF7216),
        title: Text('Game'),
      ),
      body: Stack(children: <Widget>[
        Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffFF7216),
                ),
        Container(
          child: Column(
            children: <Widget>[
              Container(
                  
                  ),
              
              CarouselSlider(
                height: MediaQuery.of(context).size.height * 0.5,
                viewportFraction: 1.0,
                aspectRatio: MediaQuery.of(context).size.aspectRatio,
                initialPage: 0,
                enlargeCenterPage: false,
                autoPlay: false,
                reverse: false,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(imgUrl, fit: BoxFit.cover),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 5.0,
                    height: 5.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                          _current == index ? Colors.redAccent : Color(0xffF2f2f2f),
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
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