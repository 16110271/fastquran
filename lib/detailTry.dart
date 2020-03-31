import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'HurufModel.dart';
import 'CustomShowDialog.dart';

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
    EdgeInsets pad = MediaQuery.of(context).padding;
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
              padding: EdgeInsets.only(top: pad.top * 1.3, right: 73),
              child: Container(
                child: fathah == true ? gambarFathah() : Container(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: pad.top * 1.3, right: 73),
              child: Container(
                child: dhomah == true ? gambarDhomah() : Container(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: pad.top * 3.6, right: 80),
              child: Container(
                child: kasrah == true ? gambarKasrah() : Container(),
              ),
            ),
            Padding(
              //top button
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
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.info_outline),
                        iconSize: 30,
                        color: Colors.black,
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return CustomAlertDialog(
                                    content: SingleChildScrollView(
                                        child: ListBody(children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Detail Huruf Hijaiyah',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20))
                                          ],
                                        ),
                                      ),
                                      Text(
                                          'Pada halaman ini menampilkan informasi huruf hijaiyah secara detail. Terdapat tiga pilihan harokat yaitu fathah, kasrah, dhomah. Masing masing tombol akan menampilkan gambar harokat pada huruf tersebut dan akan mengaktifkan suara huruf sesuai harokat yang sudah dipilih, klik tombol Play untuk memainkan suara. ',
                                          textAlign: TextAlign.justify),
                                    ])),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text(
                                          'Oke',
                                          style: TextStyle(
                                            color: Color(0xffF57c00),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ]);
                              });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: pad.top * 11.5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        //tombol fathah
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
                            height: MediaQuery.of(context).size.width * 0.11,
                            width: MediaQuery.of(context).size.width * 0.24,
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
                        //tombol kasrah
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
                            height: MediaQuery.of(context).size.width * 0.11,
                            width: MediaQuery.of(context).size.width * 0.24,
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
                        //tombol dhomah
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
                            height: MediaQuery.of(context).size.width * 0.11,
                            width: MediaQuery.of(context).size.width * 0.24,
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
              padding: EdgeInsets.fromLTRB(20, pad.top * 16.6, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat'),
                              children: <TextSpan>[
                            TextSpan(
                                text: "Huruf ",
                                style: TextStyle(
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.062)),
                            TextSpan(
                                text: widget.huruf.nama,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.062)),
                          ])
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
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.043),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 10),
                        child: Text(widget.huruf.tempatKeluar,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.036)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Text(
                          "Cara Pengucapan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.043),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1.0, top: 10),
                        child: Text(widget.huruf.karakter,
                            style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.036,
                                height: 1.5)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: pad.top * 16.5, right: 20),
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
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.043),
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
            Padding(
              padding: EdgeInsets.only(top: pad.top * 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.crop_original),
                      iconSize: MediaQuery.of(context).size.width * 0.09,
                      color: Colors.black,
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomAlertDialog(
                                
                                  content: Container(
                                    height: 350,
                                    child: Column(children: <Widget>[
                                      Text('Tempat keluar huruf '+ widget.huruf.nama, style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20)),
                                      Padding(
                                        padding: const EdgeInsets.only(top:10.0),
                                        child: Image.asset(widget.huruf.gambarMakh),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:10.0),
                                        child: Text(widget.huruf.tempatKeluar),
                                      )
                                    ]),
                                  ),
                                  actions: <Widget>[
                                    FlatButton(
                                      child: Text(
                                        'Oke',
                                        style: TextStyle(
                                          color: Color(0xffF57c00),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ]);
                            });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

gambarFathah() {
  return Container(
    //fathah
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(' َ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 150,
                  fontFamily: 'DUBAI',
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 6.0,
                      offset: Offset(4, 4),
                    )
                  ])),
        ]),
  );
}

gambarDhomah() {
  return Container(
    //dhomah
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(' ُ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 150,
                  fontFamily: 'DUBAI',
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 6.0,
                      offset: Offset(4, 4),
                    )
                  ])),
        ]),
  );
}

gambarKasrah() {
  return Container(
    //kasrah
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(' ِ',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 150,
                  fontFamily: 'DUBAI',
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      blurRadius: 6.0,
                      offset: Offset(4, 4),
                    )
                  ])),
        ]),
  );
}
