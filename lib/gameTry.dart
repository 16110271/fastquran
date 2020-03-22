import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'HurufModel.dart';

class GameTry extends StatefulWidget {
  @override
  _GameTryState createState() => _GameTryState();
}

class _GameTryState extends State<GameTry> {
  int _current = 0;
  List<List> imgList = [
    ['image/aa.jpg', 1],
    ['image/bb.jpg', 2],
    ['image/cc.jpg', 3],
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  Map targetHuruf = {
    1: false,
    2: false,
    3: false,
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF57c00),
        title: Text('Game'),
      ),
      body: Stack(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffF57c00),
        ),
        Container(
          child: ListView(
            children: <Widget>[
              Container(),
              sliderBox(context),
              SizedBox(
                height: 20,
              ),
              sliderIndicator(),
              SizedBox(
                height: 20.0,
              ),
              tombolHijaiyah(),

              // Row(
              //     crossAxisAlignment: CrossAxisAlignment.end,
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: <Widget>[
              //       Container(
              //           child: new GridView.builder(
              //               itemCount: 5,
              //               gridDelegate:
              //                   new SliverGridDelegateWithFixedCrossAxisCount(
              //                       crossAxisCount: 3),
              //               itemBuilder: (BuildContext context, int index) {
              //                 return new Container(
              //                     alignment: Alignment.center,
              //                     child: new Text('Item $index'),
              //                   );
              //               }))
              //     ])
            ],
          ),
        ),
      ]),
    );
  }

  Row sliderIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: map<Widget>(imgList, (index, url) {
        return Container(
          width: 5.0,
          height: 5.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _current == index ? Colors.redAccent : Color(0xffF2f2f2f),
          ),
        );
      }),
    );
  }

  CarouselSlider sliderBox(BuildContext context) {
    return CarouselSlider(
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
      items: imgList.map((img) {
        if (img[1] == 1) {
          //_firstBox()
        } else {
          if (img[1] == 2) {
            //_secondBox
          } else {
            //_thirdBox
          }
        }
        return Builder(
          builder: (BuildContext context) {
            return Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(img[0], fit: BoxFit.cover),
                ),
                img[1] == 1
                    ? _firstBox()
                    : img[1] == 2 ? _secondBox() : _thirdBox(),
              ],
            );
          },
        );
      }).toList(),
    );
  }

  Row tombolHijaiyah() {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Draggable(
            data: 1,
            child: targetHuruf[1] == false ? dragableBox('1') : Container(),
            feedback: dragableBox('1'),
            childWhenDragging: Container(),
          ),
          Draggable(
            data: 2,
            child: targetHuruf[2] == false ? dragableBox('2') : Container(),
            feedback: dragableBox('2'),
            childWhenDragging: Container(),
          ),
        ]);
    // Container(
    //   //kotak-kotak
    //   height: 54,
    //   width: 54,
    //   decoration: BoxDecoration(
    //     color: Color(0xffFFFFFF),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.black26,
    //         blurRadius: 6.0,
    //         offset: Offset(2, 2),
    //       )
    //     ],
    //     borderRadius: BorderRadius.all(Radius.circular(6)),
    //   ),
    //   child: Text('غ',
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //           color: Colors.black, fontSize: 40, fontFamily: 'DUBAI')),
    // ),
    //   ],
    // );
  }

  Container dragableBox(String huruf) {
    return Container(
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
      child: Text(huruf,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontSize: 40, fontFamily: 'DUBAI')),
    );
  }

  _firstBox() {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Row(
            //baris 1
            children: <Widget>[
              targetHuruf[1] == false ? widgetKotak(1) : dragableBox('1'),
              targetHuruf[2] == false ? widgetKotak(2) : dragableBox('2'),
              targetHuruf[3] == false ? widgetKotak(3) : dragableBox('3'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            //baris 2
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            //baris 3
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            //baris 4
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ), //bawahnya
      ],
    ));
  }

  _secondBox() {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Padding(
            padding: const EdgeInsets.only(left: 55),
            child: Row(
              //baris 1
              children: <Widget>[
                // widgetKotak(1),
                widgetKotak(1),
                widgetKotak(1),
                widgetKotak(1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Padding(
            padding: const EdgeInsets.only(left: 110),
            child: Row(
              //baris 2
              children: <Widget>[
                widgetKotak(1),
                widgetKotak(1),
                widgetKotak(1),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Padding(
            padding: const EdgeInsets.only(left: 220),
            child: Row(
              //baris 3
              children: <Widget>[widgetKotak(1)],
            ),
          ),
        ),
      ],
    ));
  }

  _thirdBox() {
    return Container(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            //baris 1
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            //baris 2
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            //baris 3
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            //baris 4
            children: <Widget>[
              widgetKotak(1),
              widgetKotak(1),
            ],
          ),
        ), //bawahnya
      ],
    ));
  }

  widgetKotak(int hurufHijaiyah) {
    return Padding(
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
        child: DragTarget(
          builder: (context, List<int> candidateData, rejectedData) {
            return Center(
                child: Text(
              hurufHijaiyah.toString(),
              style: TextStyle(color: Colors.white, fontSize: 22.0),
            ));
          },
          onWillAccept: (data) {
            return true;
          },
          onAccept: (data) {
            if (data == hurufHijaiyah) {
              setState(() {
                targetHuruf[hurufHijaiyah] = true;
              });
              scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text("Correct!"),
                duration: Duration(milliseconds: 500),
              ));
            } else {
              scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text("False!"),
                duration: Duration(milliseconds: 500),
              ));
            }
          },
        ),
      ),
    );
  }
}
