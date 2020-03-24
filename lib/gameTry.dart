import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class GameTry extends StatefulWidget {
  @override
  _GameTryState createState() => _GameTryState();
}

class _GameTryState extends State<GameTry> {
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  String resultText = "";

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

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
    4: false,
    5: false,
    6: false,
    7: false,
    8: false,
    9: false,
    10: false,
    11: false,
    12: false,
    13: false,
    14: false,
    15: false,
    16: false,
    17: false,
    18: false,
    19: false,
    20: false,
    21: false,
    22: false,
    23: false,
    24: false,
    25: false,
    26: false,
    27: false,
    28: false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xffF57c00),
        title: Text('Game'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              for (int i = 1; i < 29; i++) targetHuruf[i] = false;
              print('reset');
              // }
            },
          ),
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset('image/logo.png', height: 40),
                                ],
                              ),
                            ),
                            Text(
                              'Version 1.0 \n2020 © FastQuran',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                                '\nAplikasi pengenalan huruf hijaiyah. Berisi tentang informasi huruf hijaiyah secara detail lengkap dengan cara pengucapan, dan contoh suara pelafalan dengan benar. Terdapat dua menu yaitu Informasi Detail Huruf, dan permainan drag and drop sederhana tentang tempat keluar huruf hijaiyah secara tepat.',
                                textAlign: TextAlign.justify),
                            // Text('\n2020 © FastQuran',
                            //style:
                            // TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
                    );
                  });
            },
          )
        ],
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
                height: 0,
              ),
              sliderIndicator(),
              SizedBox(
                  // height: 20.0,
                  ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 390),
          child: Center(
            child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: <Widget>[
                    tombolHijaiyah(),
                  ],
                )),
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
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SingleChildScrollView(
          child: Column(children: <Widget>[
            Row(
              children: <Widget>[
                Draggable(
                  data: 6,
                  child:
                      targetHuruf[6] == false ? dragableBox('ح') : dragKosong(),
                  feedback: dragableBox('ح'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 5,
                  child:
                      targetHuruf[5] == false ? dragableBox('ج') : dragKosong(),
                  feedback: dragableBox('ج'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 4,
                  child:
                      targetHuruf[4] == false ? dragableBox('ث') : dragKosong(),
                  feedback: dragableBox('ث'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 3,
                  child:
                      targetHuruf[3] == false ? dragableBox('ت') : dragKosong(),
                  feedback: dragableBox('ت'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 2,
                  child:
                      targetHuruf[2] == false ? dragableBox('ب') : dragKosong(),
                  feedback: dragableBox('ب'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 1,
                  child:
                      targetHuruf[1] == false ? dragableBox('ا') : dragKosong(),
                  feedback: dragableBox('ا'),
                  childWhenDragging: Padding(
                    padding: const EdgeInsets.all(7),
                    child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                        )),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Draggable(
                  data: 12,
                  child: targetHuruf[12] == false
                      ? dragableBox('س')
                      : dragKosong(),
                  feedback: dragableBox('س'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 11,
                  child: targetHuruf[11] == false
                      ? dragableBox('ز')
                      : dragKosong(),
                  feedback: dragableBox('ز'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 10,
                  child: targetHuruf[10] == false
                      ? dragableBox('ر')
                      : dragKosong(),
                  feedback: dragableBox('ر'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 9,
                  child:
                      targetHuruf[9] == false ? dragableBox('ذ') : dragKosong(),
                  feedback: dragableBox('ذ'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 8,
                  child:
                      targetHuruf[8] == false ? dragableBox('د') : dragKosong(),
                  feedback: dragableBox('د'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 7,
                  child:
                      targetHuruf[7] == false ? dragableBox('خ') : dragKosong(),
                  feedback: dragableBox('خ'),
                  childWhenDragging: dragKosong(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Draggable(
                  data: 18,
                  child: targetHuruf[18] == false
                      ? dragableBox('ع')
                      : dragKosong(),
                  feedback: dragableBox('ع'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 17,
                  child: targetHuruf[17] == false
                      ? dragableBox('ظ')
                      : dragKosong(),
                  feedback: dragableBox('ظ'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 16,
                  child: targetHuruf[16] == false
                      ? dragableBox('ط')
                      : dragKosong(),
                  feedback: dragableBox('ط'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 15,
                  child: targetHuruf[15] == false
                      ? dragableBox('ض')
                      : dragKosong(),
                  feedback: dragableBox('ض'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 14,
                  child: targetHuruf[14] == false
                      ? dragableBox('ص')
                      : dragKosong(),
                  feedback: dragableBox('ص'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 13,
                  child: targetHuruf[13] == false
                      ? dragableBox('ش')
                      : dragKosong(),
                  feedback: dragableBox('ش'),
                  childWhenDragging: dragKosong(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Draggable(
                  data: 24,
                  child: targetHuruf[24] == false
                      ? dragableBox('م')
                      : dragKosong(),
                  feedback: dragableBox('م'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 23,
                  child: targetHuruf[23] == false
                      ? dragableBox('ل')
                      : dragKosong(),
                  feedback: dragableBox('ل'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 22,
                  child: targetHuruf[22] == false
                      ? dragableBox('ك')
                      : dragKosong(),
                  feedback: dragableBox('ك'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 21,
                  child: targetHuruf[21] == false
                      ? dragableBox('ق')
                      : dragKosong(),
                  feedback: dragableBox('ق'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 20,
                  child: targetHuruf[20] == false
                      ? dragableBox('ف')
                      : dragKosong(),
                  feedback: dragableBox('ف'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 19,
                  child: targetHuruf[19] == false
                      ? dragableBox('غ')
                      : dragKosong(),
                  feedback: dragableBox('غ'),
                  childWhenDragging: dragKosong(),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Draggable(
                  data: 28,
                  child: targetHuruf[28] == false
                      ? dragableBox('ي')
                      : dragKosong(),
                  feedback: dragableBox('ي'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 27,
                  child: targetHuruf[27] == false
                      ? dragableBox('ھـ')
                      : dragKosong(),
                  feedback: dragableBox('ھـ'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 26,
                  child: targetHuruf[26] == false
                      ? dragableBox('و')
                      : dragKosong(),
                  feedback: dragableBox('و'),
                  childWhenDragging: dragKosong(),
                ),
                Draggable(
                  data: 25,
                  child: targetHuruf[25] == false
                      ? dragableBox('ن')
                      : dragKosong(),
                  feedback: dragableBox('ن'),
                  childWhenDragging: dragKosong(),
                ),
              ],
            ),
          ]),
        )
      ],
    );
  }

  Padding dragableBox(String huruf) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
        //kotak-kotak
        height: 50,
        width: 50,
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
                color: Colors.black, fontSize: 30, fontFamily: 'DUBAI')),
      ),
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
              targetHuruf[16] == false ? widgetKotak(16) : dragableBox('ط'),
              targetHuruf[8] == false ? widgetKotak(8) : dragableBox('د'),
              targetHuruf[3] == false ? widgetKotak(3) : dragableBox('ت'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            //baris 2
            children: <Widget>[
              targetHuruf[17] == false ? widgetKotak(17) : dragableBox('ظ'),
              targetHuruf[9] == false ? widgetKotak(9) : dragableBox('ذ'),
              targetHuruf[4] == false ? widgetKotak(4) : dragableBox('ث'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            //baris 3
            children: <Widget>[
              targetHuruf[26] == false ? widgetKotak(26) : dragableBox('و'),
              targetHuruf[2] == false ? widgetKotak(2) : dragableBox('ب'),
              targetHuruf[24] == false ? widgetKotak(24) : dragableBox('م'),
              targetHuruf[20] == false ? widgetKotak(20) : dragableBox('ف'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 10),
          child: Row(
            //baris 4
            children: <Widget>[
              targetHuruf[14] == false ? widgetKotak(14) : dragableBox('ص'),
              targetHuruf[11] == false ? widgetKotak(11) : dragableBox('ز'),
              targetHuruf[12] == false ? widgetKotak(12) : dragableBox('س'),
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
                // targetHuruf[] == false ? widgetKotak() : dragableBox(''),
                targetHuruf[23] == false ? widgetKotak(23) : dragableBox('ل'),
                targetHuruf[25] == false ? widgetKotak(25) : dragableBox('ن'),
                targetHuruf[10] == false ? widgetKotak(10) : dragableBox('ر'),
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
                targetHuruf[28] == false ? widgetKotak(28) : dragableBox('ي'),
                targetHuruf[13] == false ? widgetKotak(13) : dragableBox('ش'),
                targetHuruf[5] == false ? widgetKotak(5) : dragableBox('ج'),
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
              children: <Widget>[
                targetHuruf[15] == false ? widgetKotak(15) : dragableBox('ض')
              ],
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
              targetHuruf[22] == false ? widgetKotak(22) : dragableBox('ك'),
              targetHuruf[21] == false ? widgetKotak(21) : dragableBox('ق'),
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
              targetHuruf[7] == false ? widgetKotak(7) : dragableBox('خ'),
              targetHuruf[19] == false ? widgetKotak(19) : dragableBox('غ'),
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
              targetHuruf[6] == false ? widgetKotak(6) : dragableBox('ح'),
              targetHuruf[18] == false ? widgetKotak(18) : dragableBox('ع'),
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
              targetHuruf[27] == false ? widgetKotak(27) : dragableBox('ھـ'),
              targetHuruf[1] == false ? widgetKotak(1) : dragableBox('ا'),
            ],
          ),
        ), //bawahnya
      ],
    ));
  }

  widgetKotak(int hurufHijaiyah) {
    return Padding(
      padding: const EdgeInsets.all(7),
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
              style: TextStyle(color: Colors.white, fontSize: 0),
            ));
          },
          onWillAccept: (data) {
            return true;
          },
          onAccept: (data) {
            if (data == hurufHijaiyah) {
              setState(() {
                targetHuruf[hurufHijaiyah] = true;

                //untuk reset tombol
                // for (int i = 1; i < 30; i++) {
                // targetHuruf[i] = false;
                // }
              });
              audioCache.play('correct.mp3');

              scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text("✓ Tepat Sekali! ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                backgroundColor: Color(0xff86c933),
                duration: Duration(milliseconds: 1000),
              ));
            } else {
              audioCache.play('incorrect.mp3');
              scaffoldKey.currentState.showSnackBar(SnackBar(
                content: Text("✕ Kurang Tepat!", style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                backgroundColor: Color(0xffd32f2f),
                duration: Duration(milliseconds: 1000),
              ));
            }
          },
        ),
      ),
    );
  }

  Padding dragKosong() {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          )),
    );
  }
}
