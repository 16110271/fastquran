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
                          _current == index ? Colors.redAccent : Colors.green,
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

        )
      ]),
    );
  }
}
