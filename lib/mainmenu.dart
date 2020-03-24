//import 'package:Fast_Quran/game.dart';
import 'package:Fast_Quran/gameTry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'HurufModel.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: Stack(
        children: <Widget>[
          Container(
            child: Column(
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
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 80, left: 40, right: 40, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hai, Selamat Datang di FastQuran!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: Container(
                              width: 50,
                              height: 5,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 26),
                            child: Text("Learning Quran Easier!",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70, right: 25),
                child: Container(
                    child: IconButton(
                        icon: Icon(Icons.info_outline, color: Colors.white),
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
                                            crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Image.asset('image/logo.png',
                                                  height: 40),
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
                        }
                        )),
              ),
            ],
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 245, bottom: 0, left: 40, right: 40),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DisplayListView()));
              },
              child: Container(
                height: 200,
                width: 350,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(2, 2),
                      )
                    ],
                    borderRadius: new BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Image.asset('image/menu1.png'),
                        decoration: new BoxDecoration(
                            color: Colors.black26,
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10),
                                topRight: const Radius.circular(10)))),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18, bottom: 10),
                        child: Column(children: <Widget>[
                          Container(
                            width: 272,
                            child: Text("Detail Huruf",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xffF57c00),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 30, right: 30),
                            child: Text(
                                "Mempelajari karakter huruf hijaiyah dan bagaimana cara pengucapan secara benar sesuai makhrajul hurufnya."),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 470, bottom: 0, left: 40, right: 40),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GameTry()));
              },
              child: Container(
                height: 200,
                width: 350,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6.0,
                        offset: Offset(2, 2),
                      )
                    ],
                    borderRadius: new BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: <Widget>[
                    Container(
                        child: Image.asset('image/menu2.png'),
                        decoration: new BoxDecoration(
                            color: Colors.black26,
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(10),
                                topRight: const Radius.circular(10)))),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 10),
                        child: Column(children: <Widget>[
                          Container(
                            width: 272,
                            child: Text("Makhrajul Huruf",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color(0xffF57c00),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 8, left: 30, right: 30),
                            child: Text(
                                "Sebuah permainan drag and drop huruf hijaiyah sesuai dengan letak tempat keluarnya."),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
