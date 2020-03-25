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
  Color activeColor = Colors.white;
  Color inactiveColor = Color(0xffF57c00);

  @override
  Widget build(BuildContext context) {
    print(widget.huruf.kategori);
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
        // appBar: AppBar(
        //   backgroundColor: Color(0xffF57c00),
        //   title: Text(
        //     "Huruf " + widget.huruf.nama,
        //     style: TextStyle(fontWeight: FontWeight.bold),
        //   ),
        // ),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xffF57c00),
                  borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(8.0),
                      bottomRight: const Radius.circular(8.0))),
              child: Container(
                margin: EdgeInsets.only(bottom: 50),
                child: Center(
                  child: Text(widget.huruf.gambar,
                      style: TextStyle(
                          color: Colors.white,
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
              padding: const EdgeInsets.only(top: 30, left: 0),
              child: Container(
                height: 30,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        iconSize: 25,
                        color: Colors.white,
                        tooltip: 'Reset',
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
                        iconSize: 25,
                        color: Colors.white,
                        tooltip: 'Reset',
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
                        padding: const EdgeInsets.all(20),
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
                            width: 90,
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
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
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
                            width: 90,
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
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
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
                            width: 90,
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
                                    color: Colors.black,
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
                      Text(
                        "Huruf " + widget.huruf.nama,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 5),
                        child: Text(widget.huruf.kategori),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                            width: 370,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Container(
                                  height: 200,
                                  width: 150,
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6.0,
                                          offset: Offset(2, 2),
                                        )
                                      ],
                                      borderRadius: new BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Tempat Keluar",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17)),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(
                                                widget.huruf.tempatKeluar,
                                                style: TextStyle(fontSize: 15)),
                                          )
                                        ]),
                                  ),
                                ),
                                Container(
                                  height: 200,
                                  width: 200,
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black26,
                                          blurRadius: 6.0,
                                          offset: Offset(2, 2),
                                        )
                                      ],
                                      borderRadius: new BorderRadius.all(
                                          Radius.circular(10))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text("Cara Pengucapan",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17)),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Text(widget.huruf.karakter,
                                                style: TextStyle(fontSize: 15)),
                                          )
                                        ]),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
