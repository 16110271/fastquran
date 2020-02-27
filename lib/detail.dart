import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'HurufModel.dart';

typedef void OnError(Exception exception);

class DetailApp extends StatefulWidget {
  final HurufModel huruf;
  DetailApp({Key key, this.huruf}) : super(key: key);

  @override
  _DetailAppState createState() => _DetailAppState();
}

class _DetailAppState extends State<DetailApp> {
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
  Color inactiveColor = Color(0xffFF7216);

  @override
  Widget build(BuildContext context) {
    print(widget.huruf.kategori);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFF7216),
        title: Text(
          "Huruf " + widget.huruf.nama,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            decoration: new BoxDecoration(
                color: Color(0xffFF7216),
                borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(40.0),
                    bottomRight: const Radius.circular(40.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(widget.huruf.gambar,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 120,
                        fontFamily: 'DUBAI')),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        color: fathah ? activeColor : inactiveColor,
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                        splashColor: Color(0xffFF7216),
                        onPressed: () {
                          setState(() {
                            fathah = true;
                            kasrah = false;
                            dhomah = false;
                          });
                        }, //_fathahOnPress,
                        child: Text(
                          "Fathah",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      FlatButton(
                        color: kasrah ? activeColor : inactiveColor,
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                        splashColor: Color(0xffFF7216),
                        onPressed: () {
                          setState(() {
                            fathah = false;
                            kasrah = true;
                            dhomah = false;
                          });
                        }, //_kasrahOnPress,
                        child: Text(
                          "Kasrah",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      FlatButton(
                        color: dhomah ? activeColor : inactiveColor,
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                        splashColor: Color(0xffFF7216),
                        onPressed: () {
                          setState(() {
                            fathah = false;
                            kasrah = false;
                            dhomah = true;
                          });
                        }, //_dhomahOnPress,
                        child: Text(
                          "Dhomah",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
              child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        iconSize: 50,
                        color: Color(0xffFF7216),
                        splashColor: Color(0xffFF7216),
                        icon: Icon(Icons.play_arrow),
                        // onPressed: () => audioCache.play(widget.huruf.suaraF)),
                        onPressed: () {
                          if (fathah) {
                            return audioCache.play(widget.huruf.suaraF);
                          } else if (kasrah) {
                            return audioCache.play(widget.huruf.suaraK);
                          } else {
                            return audioCache.play(widget.huruf.suaraD);
                          }
                        }),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(children: <Widget>[
                    Text('Cara Pengucapan',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(
                          widget.huruf.karakter,
                          textAlign: TextAlign.center,
                        )),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Column(children: <Widget>[
                    Text('Tempat Keluar Huruf',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Text(widget.huruf.tempatKeluar,
                            textAlign: TextAlign.center)),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: GestureDetector(
                    // margin: EdgeInsets.only(top: 40),
                    child: ClipOval(
                      child: Material(
                        color: Color(0xffFF7216), // button color
                        child: InkWell(
                          splashColor: Colors.lightBlue, // inkwell color
                          child: SizedBox(
                              width: 60,
                              height: 60,
                              child: Icon(
                                Icons.mic,
                                color: Colors.white,
                              )),
                          onLongPress: () {
                            print('long');
                          },
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
