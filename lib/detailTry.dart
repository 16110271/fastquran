//import 'package:Fast_Quran/HurufModelGrid.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'HurufModel.dart';

typedef void OnError(Exception exception);

class DetailTryApp extends StatefulWidget {
  final HurufModel huruf;
  DetailTryApp({Key key, this.huruf}) : super(key: key);

  @override
  _DetailTryAppState createState() => _DetailTryAppState();
}

class _DetailTryAppState extends State<DetailTryApp> {
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

  String localFilePath;

  bool fathah = true;
  bool kasrah = false;
  bool dhomah = false;
  Color activeColor = Color(0xffF57c00);
  Color inactiveColor = Colors.white;
  Color fActive = Colors.white;

  @override
  Widget build(BuildContext context) {
    print(widget.huruf.kategori);
    return Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    offset: Offset(2, 2),
                                  )
                                ],
                  color: Color(0xffFFFFFF),
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0))),
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Center(
                  child: Text(widget.huruf.gambar,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 120,
                          fontFamily: 'DUBAI',
                          shadows: [
                            Shadow(
                              color: Colors.black26,
                              blurRadius: 6.0,
                              offset: Offset(4, 4),
                            )
                          ])),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 0),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DisplayListView(),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.info_outline),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DisplayListView(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 270),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              fathah = true;
                              kasrah = false;
                              dhomah = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 110,
                            decoration: new BoxDecoration(
                                color: fathah ? activeColor : inactiveColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    offset: Offset(2, 2),
                                  )
                                ],
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 15),
                            //_fathahOnPress,
                            child: Center(
                              child: Text(
                                "Fathah",
                                style: TextStyle(
                                  color: fathah ? fActive : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              fathah = false;
                              kasrah = true;
                              dhomah = false;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 110,
                            decoration: new BoxDecoration(
                                color: kasrah ? activeColor : inactiveColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    offset: Offset(2, 2),
                                  )
                                ],
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 15),

                            //_kasrahOnPress,
                            child: Center(
                              child: Text(
                                "Kasrah",
                                style: TextStyle(
                                  color: kasrah ? fActive : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              fathah = false;
                              kasrah = false;
                              dhomah = true;
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 110,
                            decoration: new BoxDecoration(
                                color: dhomah ? activeColor : inactiveColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 6.0,
                                    offset: Offset(2, 2),
                                  )
                                ],
                                borderRadius:
                                    new BorderRadius.all(Radius.circular(10))),
                            padding: EdgeInsets.symmetric(
                                vertical: 6, horizontal: 15),
                            //_dhomahOnPress,
                            child: Center(
                              child: Text(
                                "Dhomah",
                                style: TextStyle(
                                    color: dhomah ? fActive : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 360),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
                          children: <TextSpan>[
                            TextSpan(text: "Huruf ", style: TextStyle(fontSize: 30)),
                            TextSpan(text: widget.huruf.nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                          ]
                        )
                        //"Huruf " + widget.huruf.nama,
                       // style: TextStyle(
                           // fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 5),
                        child: Text(widget.huruf.kategori),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Tempat Keluar Huruf",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 10),
                        child: Text(widget.huruf.tempatKeluar,
                            style: TextStyle(fontSize: 17)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Cara Pengucapan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 10),
                        child: Text(widget.huruf.karakter,
                            style: TextStyle(fontSize: 17, height: 1.5)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 120,
                    decoration: new BoxDecoration(
                        color: Color(0xffF57c00),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6.0,
                            offset: Offset(2, 2),
                          )
                        ],
                        borderRadius:
                            new BorderRadius.all(Radius.circular(10))),
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                    //_fathahOnPress,

                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (fathah) {
                            return audioCache.play(widget.huruf.suaraF);
                          } else if (kasrah) {
                            return audioCache.play(widget.huruf.suaraK);
                          } else {
                            return audioCache.play(widget.huruf.suaraD);
                          }
                        });
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Play",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                              ),
                            ),
                            Icon(
                              Icons.play_arrow,
                                color: Colors.white,
                                )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
